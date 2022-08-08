package kr.mr.myapp;

import kr.mr.mapper.CategoryMapper;
import kr.mr.mapper.VehicleMapper;
import kr.mr.model.VehicleDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;


@RestController
public class CalendarController {

    @Autowired
    private VehicleMapper vehicleMapper;


    @Autowired
    private CategoryMapper categoryMapper;

    static class Calendar {
        private String title;
        private String start;
        private String lentUser;
        private String returnDay;

        Calendar(String title, String start, String lentUser, String returnDay) {
            this.title = title;
            this.start = start;
            this.lentUser = lentUser;
            this.returnDay = returnDay;
        }


        public String getTitle() {
            return title;
        }

        public String getStart() {
            return start;
        }

        public String getLentUser() {
            return lentUser;
        }

        public String getReturnDay() {
            return returnDay;
        }
    }


    static class CarSelling {
        private String cateName;
        private int count;

        CarSelling(String cateName, int count) {
            this.cateName = cateName;
            this.count = count;
        }

        public String getCateName() {
            return cateName;
        }

        public int getCount() {
            return count;
        }
    }

    @GetMapping(value = "/calendars")
    public ResponseEntity home(Locale locale, Model model) {

        List<Calendar> calendars = new ArrayList<>();

        List<VehicleDTO> dtos = vehicleMapper.vehicleList();

//        calendars.add(new Calendar("a", "2022-02-07", lentUser, returnDay));
//        calendars.add(new Calendar("a", "2022-02-08", lentUser, returnDay));

        return ResponseEntity.ok(dtos);
    }


    @GetMapping(value = "/charts")
    public @ResponseBody ResponseEntity charts() {

        List<VehicleDTO> vehicles = vehicleMapper.vehicleList();
        Map<Integer, List<VehicleDTO>> divideVehicles = new HashMap<>();
        for (VehicleDTO vehicle : vehicles) {
            divideVehicles.computeIfAbsent(Integer.valueOf(vehicle.getCategory_fk()), k -> new ArrayList<>()).add(vehicle);
        }

        List<CalendarController.CarSelling> list = new ArrayList<>();
        for (List<VehicleDTO> vehicleDTOS : divideVehicles.values()) {
            list.add(new CalendarController.CarSelling(categoryMapper.categoryInfo(Integer.parseInt(vehicleDTOS.get(0).getCategory_fk())).getCat_name(), vehicleDTOS.size()));
        }

        return ResponseEntity.ok(list);
    }


}
