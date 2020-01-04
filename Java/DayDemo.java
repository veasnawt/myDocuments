public class DayDemo {
    Day day;

    public DayDemo(Day day) {
        this.day = day;
    }

    public void tellItLikeItIs() {
        switch (day) {
            case MONDAY:
                System.out.println("Mondays are bad.");
                break;

            case FRIDAY:
                System.out.println("Fridays are better.");
                break;

            case SATURDAY: case SUNDAY:
                System.out.println("Weekends are best.");
                break;

            default:
                System.out.println("Midweek days are so-so.");
                break;
        }
    }

    public static void main(String[] args) {
        System.out.println("All days of the week:");
        for (Day value : Day.values()) {
            System.out.println(value.toString());
        }
        
        DayDemo firstDay = new DayDemo(Day.MONDAY);
        firstDay.tellItLikeItIs();
        DayDemo thirdDay = new DayDemo(Day.WEDNESDAY);
        thirdDay.tellItLikeItIs();
        DayDemo fifthDay = new DayDemo(Day.FRIDAY);
        fifthDay.tellItLikeItIs();
        DayDemo sixthDay = new DayDemo(Day.SATURDAY);
        sixthDay.tellItLikeItIs();
        DayDemo seventhDay = new DayDemo(Day.SUNDAY);
        seventhDay.tellItLikeItIs();

    }
}
