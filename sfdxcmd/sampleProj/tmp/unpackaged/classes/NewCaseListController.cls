public class NewCaseListController {
    public List<Case> getNewCases() {
        List<Case> results = [
            SELECT Id, CaseNumber FROM Case Where Status = 'New'];
        return results;
    }
}