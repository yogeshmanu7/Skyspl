<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>NGO Dashboard</title>
</head>
<body>
    <h2>Welcome, ${ngo.contactPerson}</h2>
    <p>Status: ${ngo.status} <c:if test="${ngo.trustedBadge}">(Trusted NGO)</c:if></p>

    <h3>Profile</h3>
    <ul>
        <li>Name: ${ngo.name}</li>
        <li>Registration Number: ${ngo.registrationNumber}</li>
        <li>PAN Number: ${ngo.panNumber}</li>
        <li>Darpan ID: ${ngo.darpanId}</li>
        <li>Email: ${ngo.email}</li>
        <li>Phone: ${ngo.phone}</li>
        <li>Website: ${ngo.website}</li>
        <li>Address: ${ngo.address}, ${ngo.city}, ${ngo.state} - ${ngo.pincode}</li>
        <li>Bank: ${ngo.bankName} (${ngo.bankBranch})</li>
        <li>Account: ${ngo.accountType} - ${ngo.bankAccountNumber}</li>
        <li>Service Categories: ${ngo.serviceCategories}</li>
        <li>Operating Regions: ${ngo.operatingRegions}</li>
        <li>Volunteers: ${ngo.totalVolunteers}</li>
        <li>Staff: ${ngo.totalStaff}</li>
        <li>Years of Operation: ${ngo.yearsOfOperation}</li>
    </ul>

    <h3>Uploaded Documents</h3>
    <ul>
        <c:forEach var="doc" items="${ngo.documents}">
            <li>${doc.documentType}: <a href="/${doc.filePath}" target="_blank">View</a></li>
        </c:forEach>
    </ul>
</body>
</html>
