// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import java.lang.String;

privileged aspect MdData_Roo_ToString {
    
    public String MdData.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Available: ").append(getAvailable()).append(", ");
        sb.append("ContentDesc: ").append(getContentDesc()).append(", ");
        sb.append("DbName: ").append(getDbName()).append(", ");
        sb.append("Description: ").append(getDescription()).append(", ");
        sb.append("GenericGrants: ").append(getGenericGrants()).append(", ");
        sb.append("IdLuDataType: ").append(getIdLuDataType()).append(", ");
        sb.append("IdMetadata: ").append(getIdMetadata()).append(", ");
        sb.append("IdOwnerUser: ").append(getIdOwnerUser()).append(", ");
        sb.append("LastUpdate: ").append(getLastUpdate()).append(", ");
        sb.append("MdDataDims: ").append(getMdDataDims() == null ? "null" : getMdDataDims().size()).append(", ");
        sb.append("MdMeasureFieldss: ").append(getMdMeasureFieldss() == null ? "null" : getMdMeasureFieldss().size()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("NumRows: ").append(getNumRows()).append(", ");
        sb.append("TableName: ").append(getTableName()).append(", ");
        sb.append("Id: ").append(getId());
        return sb.toString();
    }
    
}
