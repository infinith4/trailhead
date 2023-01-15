@isTest
private class TestVerifyDate {
    @isTest static void testCheckDates01() {
        Date date1 = Date.newInstance(2022, 11, 8);
        Date date2 = Date.newInstance(2022, 11, 9);
        Date resultDate = VerifyDate.CheckDates(date1, date2);
        System.assert(date2.year()==resultDate.year());
        System.assert(date2.month()==resultDate.month());
        System.assert(date2.day()==resultDate.day());
    }
    @isTest static void testCheckDates02() {
        Date date1 = Date.newInstance(2022, 11, 8);
        Date date2 = Date.newInstance(2022, 12, 30);
        Date resultDate = VerifyDate.CheckDates(date1, date2);
        System.debug(resultDate);
        System.assert(date1.year()==resultDate.year());
        System.assert(11==resultDate.month());
        System.assert(30==resultDate.day());
    }
}