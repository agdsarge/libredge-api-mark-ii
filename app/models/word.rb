class Word
    def self.generate
        list = ["Something", "Money", "Better", "Nothing", "Morning", "Children",
        "Area", "Problem", "Moment", "Women", "Person", "Business", "Mother",
        "Percent", "Minute", "System", "Woman", "Real", "Others", "Someone",
        "Body", "Letter", "Mummy", "Difference", "Longer", "Evening", "Story",
        "Period", "Project", "Action", "Traffic", "Record", "Increase", "Window",
        "Dinner", "Brother", "Language", "Region", "Member", "Basis", "Music",
        "Coffee", "Weekend", "Income", "Statement", "Produce", "Kitchen",
        "Daughter", "Address", "Army", "Football", "Sister", "Safety", "Birthday",
        "Instance", "Worker", "Excuse", "Village", "Colleague", "Advice", "Spirit",
        "Item", "Contract", "Teacher", "Upstairs", "Purpose", "Movement", "Knowledge",
        "Pension", "Transport", "Plenty", "Bedroom", "Product", "Extent", "Sector",
        "Success", "Chapter", "Degree", "Duty", "Meeting", "Leader", "Manner",
        "Object", "Response", "Lady", "Message", "Unit", "Greenbelt", "Season",
        "Effort", "Danger", "Justice", "Estate", "Thousand", "Nation", "Relief",
        "Happy", "Theory", "Chocolate", "Goodness", "Toilet", "Terry", "Panel",
        "Leading", "Background", "Standard", "Progress", "Engine", "Impact", "Event",
        "Modern", "Behalf", "Treatment", "Parish", "Glasses", "Hundred", "Pattern",
        "Union", "Defence", "Metal", "Method", "Driver", "Survey", "Marriage", "Violence",
        "Upset", "Context", "Dozen", "Prison", "Railway", "Saving", "Freedom", "Uncle",
        "Suspect", "Audience", "Kingdom", "County", "Public", "Common", "Bathroom",
        "Complex", "Fortnight", "Session", "Exam", "Human", "Legal", "Student", "Disease",
        "Lesson", "Cupboard", "Presence", "Version", "Normal", "Feeling", "Jenny",
        "Petrol", "Parent", "Farmer", "Aspect", "Local", "Subject", "Status", "Homework",
        "Million", "Patient", "Content", "Open", "Affair", "Crisis", "Biscuit",
        "Guidance", "Aircraft", "Summit", "Recent", "Peasant", "Employer", "Building",
        "Title", "Conflict", "Mountain", "City", "Present", "Camera", "Yellow",
        "Orange", "Purple", "Alpha", "Bravo", "Delta", "Echo", "Foxtrot", "Hotel",
        "Kilo", "Lima", "Oscar", "Papa", "Tango", "Victor", "Yankee", "Zulu", "Empty"]

        str = ''
        5.times {str += list[rand(200)] }
        return str
    end
end
