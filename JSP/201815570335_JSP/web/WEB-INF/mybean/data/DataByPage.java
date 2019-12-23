package mybean.date;
//import com.sun.rowset.*;
import javax.sql.rowset.*;

public class DataByPage{
    public static void main(String[] args) throws Exception {
        CachedRowSet rowSet = RowSetProvider.newFactory().createCachedRowSet();
    }
//    CachedRowSet rowSet = RowSetProvider.newFactory().createCachedRowSet();
//    CachedRowSetImpl rowSet=null;
    int pageSize=1;
    int totalPages=1;
    int currentPage =1;

//    public void setRowSet(CachedRowSetImpl rowSet) {
////        this.rowSet = rowSet;
////    }
////    public void setRowSet(CachedRowSet rowSet) {
////        this.rowSet = rowSet;
////    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }
}
