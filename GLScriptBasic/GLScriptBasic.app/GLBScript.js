var staticFileSystem, fileSystem;
var initFS = function() {
  staticFileSystem = new VirtualFileSystem;
  fileSystem = new VirtualFileSystem(localStorage.getItem("filesystem"));
  staticFileSystem.createDir("/media");
  fileSystem.createDir("/media");
  staticFileSystem.createFile("/log.txt", [118, 97, 114, 32, 48, 32, 47, 47, 95, 95, 95, 83, 84, 65, 82, 84, 86, 65, 82, 73, 65, 66, 76, 69, 95, 95, 95, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 76, 79, 67, 65, 76, 10, 112, 117, 115, 104, 110, 117, 109, 32, 65, 114, 114, 97, 121, 10, 112, 117, 115, 104, 110, 117, 109, 32, 91, 10, 112, 117, 115, 104, 110, 117, 109, 32, 93, 10, 112, 117, 115, 104, 110, 117, 
  109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 68, 73, 77, 10, 112, 117, 115, 104, 110, 117, 109, 32, 65, 114, 114, 97, 121, 10, 112, 117, 115, 104, 110, 117, 109, 32, 91, 10, 112, 117, 115, 104, 110, 117, 109, 32, 53, 10, 112, 117, 115, 104, 110, 117, 109, 32, 93, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 65, 114, 114, 97, 121, 10, 112, 117, 115, 104, 110, 117, 109, 32, 91, 10, 112, 117, 115, 104, 110, 117, 109, 32, 48, 10, 112, 117, 115, 
  104, 110, 117, 109, 32, 93, 10, 112, 117, 115, 104, 110, 117, 109, 32, 49, 48, 48, 10, 99, 109, 112, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 102, 117, 110, 107, 10, 112, 117, 115, 104, 110, 117, 109, 32, 40, 10, 112, 117, 115, 104, 110, 117, 109, 32, 65, 114, 114, 97, 121, 10, 112, 117, 115, 104, 110, 117, 109, 32, 91, 10, 112, 117, 115, 104, 110, 117, 109, 32, 93, 10, 112, 117, 115, 104, 110, 117, 
  109, 32, 41, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 117, 115, 104, 110, 117, 109, 32, 70, 85, 78, 67, 84, 73, 79, 78, 10, 112, 117, 115, 104, 110, 117, 109, 32, 102, 117, 110, 107, 10, 112, 117, 115, 104, 110, 117, 109, 32, 58, 10, 112, 117, 115, 104, 110, 117, 109, 32, 65, 114, 114, 10, 112, 117, 115, 104, 110, 117, 109, 32, 91, 10, 112, 117, 115, 104, 110, 117, 109, 32, 93, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10, 112, 
  117, 115, 104, 110, 117, 109, 32, 65, 114, 114, 10, 99, 97, 108, 108, 32, 83, 67, 82, 73, 80, 84, 95, 83, 84, 68, 79, 85, 84, 10, 112, 117, 115, 104, 110, 117, 109, 32, 91, 10, 112, 117, 115, 104, 110, 117, 109, 32, 48, 10, 112, 117, 115, 104, 110, 117, 109, 32, 93, 10, 112, 117, 115, 104, 110, 117, 109, 32, 10, 10]);
  staticFileSystem.createFile("/pong.txt", [13, 10, 71, 76, 79, 66, 65, 76, 32, 83, 112, 105, 101, 108, 101, 114, 88, 61, 51, 50, 48, 44, 32, 66, 97, 108, 108, 88, 61, 51, 50, 48, 44, 32, 66, 97, 108, 108, 89, 61, 50, 52, 48, 44, 65, 110, 103, 108, 101, 61, 82, 78, 68, 40, 51, 54, 48, 41, 44, 32, 76, 105, 102, 101, 13, 10, 13, 10, 76, 105, 102, 101, 61, 52, 13, 10, 13, 10, 13, 10, 87, 72, 73, 76, 69, 32, 84, 82, 85, 69, 13, 10, 9, 68, 82, 65, 87, 82, 69, 67, 84, 32, 83, 112, 105, 101, 108, 101, 114, 
  88, 44, 53, 48, 44, 56, 48, 44, 50, 48, 44, 82, 71, 66, 40, 50, 53, 53, 44, 48, 44, 48, 41, 13, 10, 9, 73, 70, 32, 75, 69, 89, 40, 50, 48, 53, 41, 13, 10, 9, 9, 83, 112, 105, 101, 108, 101, 114, 88, 61, 83, 112, 105, 101, 108, 101, 114, 88, 43, 52, 13, 10, 9, 69, 78, 68, 73, 70, 13, 10, 9, 73, 70, 32, 75, 69, 89, 40, 50, 48, 51, 41, 13, 10, 9, 9, 83, 112, 105, 101, 108, 101, 114, 88, 61, 83, 112, 105, 101, 108, 101, 114, 88, 45, 52, 13, 10, 9, 69, 78, 68, 73, 70, 13, 10, 9, 66, 97, 108, 108, 88, 
  61, 66, 97, 108, 108, 88, 43, 67, 79, 83, 40, 65, 110, 103, 108, 101, 41, 42, 56, 13, 10, 9, 66, 97, 108, 108, 89, 61, 66, 97, 108, 108, 89, 43, 83, 73, 78, 40, 65, 110, 103, 108, 101, 41, 42, 56, 13, 10, 9, 73, 70, 32, 66, 79, 88, 67, 79, 76, 76, 40, 83, 112, 105, 101, 108, 101, 114, 88, 44, 53, 48, 44, 56, 48, 44, 50, 48, 44, 66, 97, 108, 108, 88, 44, 66, 97, 108, 108, 89, 44, 51, 50, 44, 51, 50, 41, 13, 10, 9, 9, 66, 97, 108, 108, 88, 61, 66, 97, 108, 108, 88, 45, 67, 79, 83, 40, 65, 110, 103, 
  108, 101, 41, 42, 56, 13, 10, 9, 9, 66, 97, 108, 108, 89, 61, 66, 97, 108, 108, 89, 45, 83, 73, 78, 40, 65, 110, 103, 108, 101, 41, 42, 56, 13, 10, 9, 9, 65, 110, 103, 108, 101, 61, 51, 54, 48, 45, 65, 110, 103, 108, 101, 13, 10, 9, 69, 78, 68, 73, 70, 13, 10, 9, 13, 10, 9, 73, 70, 32, 66, 97, 108, 108, 88, 62, 54, 52, 48, 45, 51, 50, 32, 79, 82, 32, 66, 97, 108, 108, 88, 60, 48, 13, 10, 9, 9, 65, 110, 103, 108, 101, 61, 49, 56, 48, 45, 65, 110, 103, 108, 101, 13, 10, 9, 69, 78, 68, 73, 70, 13, 
  10, 9, 73, 70, 32, 66, 97, 108, 108, 89, 62, 52, 56, 48, 45, 51, 50, 13, 10, 9, 9, 65, 110, 103, 108, 101, 61, 51, 54, 48, 45, 65, 110, 103, 108, 101, 13, 10, 9, 69, 78, 68, 73, 70, 13, 10, 9, 13, 10, 9, 73, 70, 32, 66, 97, 108, 108, 89, 60, 48, 13, 10, 9, 9, 76, 105, 102, 101, 61, 76, 105, 102, 101, 45, 49, 13, 10, 9, 9, 66, 97, 108, 108, 88, 61, 51, 50, 48, 13, 10, 9, 9, 66, 97, 108, 108, 89, 61, 50, 52, 48, 13, 10, 9, 9, 65, 110, 103, 108, 101, 61, 82, 78, 68, 40, 51, 54, 48, 41, 13, 10, 9, 
  69, 78, 68, 73, 70, 13, 10, 9, 13, 10, 9, 68, 82, 65, 87, 82, 69, 67, 84, 32, 66, 97, 108, 108, 88, 44, 66, 97, 108, 108, 89, 44, 51, 50, 44, 51, 50, 44, 82, 71, 66, 40, 48, 44, 50, 53, 53, 44, 48, 41, 13, 10, 9, 13, 10, 9, 80, 82, 73, 78, 84, 32, 34, 76, 101, 98, 101, 110, 58, 32, 34, 43, 76, 105, 102, 101, 44, 49, 48, 44, 52, 53, 48, 13, 10, 9, 73, 70, 32, 76, 105, 102, 101, 60, 49, 13, 10, 9, 9, 69, 78, 68, 13, 10, 9, 69, 78, 68, 73, 70, 13, 10, 9, 83, 72, 79, 87, 83, 67, 82, 69, 69, 78, 13, 
  10, 87, 69, 78, 68]);
  staticFileSystem.createFile("/script1.txt", [13, 10, 13, 10, 76, 79, 67, 65, 76, 32, 65, 114, 114, 97, 121, 91, 93, 13, 10, 68, 73, 77, 32, 65, 114, 114, 97, 121, 91, 53, 93, 13, 10, 65, 114, 114, 97, 121, 91, 48, 93, 32, 61, 32, 49, 48, 48, 13, 10, 13, 10, 102, 117, 110, 107, 40, 65, 114, 114, 97, 121, 91, 93, 41, 13, 10, 13, 10, 70, 85, 78, 67, 84, 73, 79, 78, 32, 102, 117, 110, 107, 58, 32, 65, 114, 114, 91, 93, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 65, 114, 114, 91, 48, 93, 13, 10, 69, 78, 
  68, 70, 85, 78, 67, 84, 73, 79, 78, 13, 10, 13, 10]);
  staticFileSystem.createFile("/syntax.txt", [79, 112, 116, 105, 111, 110, 97, 108, 84, 101, 115, 116, 40, 49, 48, 44, 52, 48, 41, 13, 10, 83, 84, 68, 79, 85, 84, 32, 34, 82, 101, 107, 117, 114, 115, 105, 118, 58, 32, 34, 43, 114, 101, 107, 117, 114, 115, 105, 118, 40, 45, 50, 41, 13, 10, 13, 10, 76, 79, 67, 65, 76, 32, 115, 116, 114, 36, 13, 10, 115, 116, 114, 36, 61, 34, 72, 97, 108, 108, 111, 32, 87, 101, 108, 116, 34, 13, 10, 83, 84, 68, 79, 85, 84, 32, 115, 116, 114, 36, 13, 10, 13, 10, 13, 
  10, 13, 10, 13, 10, 76, 79, 67, 65, 76, 32, 65, 114, 114, 97, 121, 91, 93, 32, 47, 47, 97, 114, 114, 97, 121, 32, 48, 32, 45, 45, 32, 100, 101, 102, 105, 110, 105, 101, 114, 116, 32, 101, 105, 110, 32, 97, 114, 114, 97, 121, 32, 109, 105, 116, 32, 48, 32, 100, 105, 109, 101, 110, 115, 105, 111, 110, 101, 110, 13, 10, 68, 73, 77, 32, 65, 114, 114, 97, 121, 91, 53, 93, 13, 10, 13, 10, 83, 84, 68, 79, 85, 84, 32, 34, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 115, 116, 97, 114, 116, 34, 13, 10, 13, 
  10, 102, 117, 110, 107, 40, 55, 48, 44, 34, 72, 97, 108, 108, 111, 34, 44, 65, 114, 114, 97, 121, 91, 93, 41, 32, 47, 47, 83, 84, 68, 79, 85, 84, 32, 34, 65, 117, 115, 32, 70, 117, 110, 107, 116, 105, 111, 110, 58, 32, 34, 43, 13, 10, 13, 10, 83, 84, 68, 79, 85, 84, 32, 34, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 101, 110, 100, 34, 13, 10, 13, 10, 13, 10, 13, 10, 65, 114, 114, 97, 121, 91, 45, 49, 93, 61, 49, 48, 48, 13, 10, 68, 73, 77, 80, 85, 83, 72, 32, 65, 114, 114, 97, 121, 91, 93, 44, 
  32, 50, 57, 13, 10, 83, 84, 68, 79, 85, 84, 32, 34, 65, 114, 114, 58, 32, 34, 43, 65, 114, 114, 97, 121, 91, 45, 49, 93, 13, 10, 76, 79, 67, 65, 76, 32, 65, 114, 114, 97, 121, 50, 91, 93, 13, 10, 13, 10, 68, 73, 77, 32, 65, 114, 114, 97, 121, 50, 91, 49, 48, 93, 91, 53, 53, 93, 32, 47, 47, 112, 117, 115, 104, 110, 117, 109, 32, 49, 48, 59, 32, 112, 117, 115, 104, 97, 114, 114, 97, 121, 32, 48, 59, 32, 100, 105, 109, 32, 48, 13, 10, 13, 10, 65, 114, 114, 97, 121, 50, 91, 45, 49, 93, 91, 53, 93, 
  61, 57, 57, 13, 10, 83, 84, 68, 79, 85, 84, 32, 34, 65, 114, 114, 97, 121, 58, 32, 34, 43, 65, 114, 114, 97, 121, 50, 91, 45, 49, 93, 91, 53, 93, 13, 10, 13, 10, 71, 76, 79, 66, 65, 76, 32, 103, 103, 61, 57, 57, 49, 13, 10, 13, 10, 83, 84, 68, 79, 85, 84, 32, 34, 32, 72, 97, 108, 108, 111, 32, 34, 43, 53, 13, 10, 13, 10, 73, 70, 32, 53, 42, 57, 45, 57, 57, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 49, 42, 52, 32, 43, 32, 34, 32, 72, 97, 108, 108, 111, 32, 87, 101, 108, 116, 34, 13, 10, 69, 76, 83, 
  69, 73, 70, 32, 84, 82, 85, 69, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 71, 65, 71, 65, 34, 32, 13, 10, 69, 76, 83, 69, 73, 70, 32, 70, 65, 76, 83, 69, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 68, 65, 66, 65, 34, 32, 13, 10, 69, 76, 83, 69, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 55, 51, 13, 10, 69, 78, 68, 73, 70, 13, 10, 13, 10, 73, 70, 32, 84, 82, 85, 69, 13, 10, 9, 71, 76, 79, 66, 65, 76, 32, 107, 61, 50, 48, 48, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 45, 45, 32, 34, 43, 107, 13, 10, 
  9, 71, 79, 83, 85, 66, 32, 115, 117, 98, 49, 13, 10, 9, 13, 10, 69, 78, 68, 73, 70, 13, 10, 13, 10, 76, 79, 67, 65, 76, 32, 105, 13, 10, 13, 10, 76, 79, 67, 65, 76, 32, 106, 13, 10, 13, 10, 106, 61, 56, 48, 48, 13, 10, 83, 84, 68, 79, 85, 84, 32, 106, 13, 10, 13, 10, 105, 61, 49, 48, 48, 13, 10, 13, 10, 83, 84, 68, 79, 85, 84, 32, 34, 86, 97, 114, 105, 97, 98, 108, 101, 32, 118, 97, 114, 58, 32, 34, 43, 105, 13, 10, 13, 10, 105, 61, 48, 13, 10, 87, 72, 73, 76, 69, 32, 105, 60, 53, 13, 10, 9, 83, 
  84, 68, 79, 85, 84, 32, 34, 105, 58, 32, 34, 43, 105, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 106, 58, 32, 34, 43, 106, 13, 10, 9, 106, 61, 106, 45, 49, 13, 10, 9, 105, 61, 105, 43, 49, 13, 10, 9, 71, 79, 83, 85, 66, 32, 115, 117, 98, 49, 13, 10, 87, 69, 78, 68, 13, 10, 13, 10, 70, 79, 82, 32, 105, 61, 48, 32, 84, 79, 32, 49, 48, 32, 83, 84, 69, 80, 32, 51, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 45, 32, 34, 43, 103, 103, 13, 10, 9, 71, 79, 83, 85, 66, 32, 115, 117, 98, 49, 13, 10, 78, 69, 
  88, 84, 13, 10, 13, 10, 13, 10, 13, 10, 107, 61, 49, 13, 10, 83, 69, 76, 69, 67, 84, 32, 107, 13, 10, 9, 67, 65, 83, 69, 32, 53, 32, 84, 79, 32, 49, 48, 13, 10, 9, 9, 83, 84, 68, 79, 85, 84, 32, 34, 67, 97, 115, 101, 49, 34, 13, 10, 9, 67, 65, 83, 69, 32, 45, 49, 13, 10, 9, 9, 83, 84, 68, 79, 85, 84, 32, 34, 67, 97, 115, 101, 50, 34, 13, 10, 9, 67, 65, 83, 69, 32, 107, 13, 10, 9, 9, 83, 84, 68, 79, 85, 84, 32, 34, 67, 97, 115, 101, 51, 34, 13, 10, 9, 68, 69, 70, 65, 85, 76, 84, 32, 13, 10, 9, 9, 
  83, 84, 68, 79, 85, 84, 32, 34, 72, 72, 72, 34, 13, 10, 69, 78, 68, 83, 69, 76, 69, 67, 84, 13, 10, 13, 10, 13, 10, 83, 85, 66, 32, 115, 117, 98, 49, 58, 32, 13, 10, 9, 13, 10, 9, 76, 79, 67, 65, 76, 32, 72, 97, 108, 108, 111, 61, 49, 48, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 73, 110, 32, 83, 117, 98, 49, 32, 34, 43, 72, 97, 108, 108, 111, 43, 34, 32, 34, 43, 103, 103, 13, 10, 9, 13, 10, 9, 71, 79, 83, 85, 66, 32, 115, 117, 98, 50, 13, 10, 9, 82, 69, 84, 85, 82, 78, 13, 10, 69, 78, 68, 83, 
  85, 66, 13, 10, 13, 10, 83, 85, 66, 32, 115, 117, 98, 50, 58, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 122, 122, 122, 34, 43, 103, 103, 13, 10, 9, 82, 69, 84, 85, 82, 78, 13, 10, 69, 78, 68, 83, 85, 66, 13, 10, 13, 10, 70, 85, 78, 67, 84, 73, 79, 78, 32, 79, 112, 116, 105, 111, 110, 97, 108, 84, 101, 115, 116, 58, 32, 72, 97, 108, 108, 111, 44, 32, 66, 117, 109, 61, 49, 48, 48, 44, 32, 84, 101, 120, 116, 36, 61, 34, 72, 97, 108, 108, 111, 32, 87, 101, 108, 116, 34, 13, 10, 9, 83, 84, 68, 79, 
  85, 84, 32, 34, 72, 97, 108, 108, 111, 58, 32, 34, 43, 72, 97, 108, 108, 111, 43, 34, 32, 66, 117, 109, 58, 32, 34, 43, 66, 117, 109, 43, 34, 32, 45, 34, 43, 84, 101, 120, 116, 36, 13, 10, 69, 78, 68, 70, 85, 78, 67, 84, 73, 79, 78, 13, 10, 13, 10, 13, 10, 70, 85, 78, 67, 84, 73, 79, 78, 32, 114, 101, 107, 117, 114, 115, 105, 118, 58, 32, 80, 117, 109, 13, 10, 9, 73, 70, 32, 80, 117, 109, 62, 49, 48, 13, 10, 9, 9, 83, 84, 68, 79, 85, 84, 32, 34, 65, 117, 115, 32, 34, 43, 80, 117, 109, 13, 10, 9, 
  9, 82, 69, 84, 85, 82, 78, 32, 80, 117, 109, 13, 10, 9, 69, 76, 83, 69, 13, 10, 9, 9, 83, 84, 68, 79, 85, 84, 32, 34, 82, 101, 107, 58, 32, 34, 43, 80, 117, 109, 13, 10, 9, 9, 82, 69, 84, 85, 82, 78, 32, 114, 101, 107, 117, 114, 115, 105, 118, 40, 80, 117, 109, 43, 49, 41, 13, 10, 9, 69, 78, 68, 73, 70, 13, 10, 69, 78, 68, 70, 85, 78, 67, 84, 73, 79, 78, 13, 10, 13, 10, 70, 85, 78, 67, 84, 73, 79, 78, 32, 102, 117, 110, 107, 58, 32, 80, 97, 114, 97, 109, 44, 32, 84, 101, 115, 116, 36, 44, 32, 65, 
  114, 114, 91, 93, 13, 10, 9, 80, 97, 114, 97, 109, 61, 80, 97, 114, 97, 109, 43, 53, 13, 10, 9, 83, 84, 65, 67, 75, 73, 78, 70, 79, 13, 10, 9, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 73, 110, 32, 70, 117, 110, 107, 116, 105, 111, 110, 33, 33, 32, 34, 43, 80, 97, 114, 97, 109, 43, 32, 34, 32, 32, 32, 32, 34, 43, 84, 101, 115, 116, 36, 43, 34, 32, 45, 45, 32, 34, 43, 65, 114, 114, 91, 48, 93, 13, 10, 9, 75, 69, 89, 87, 65, 73, 84, 13, 10, 9, 71, 79, 83, 85, 66, 32, 115, 117, 98, 49, 13, 10, 9, 
  82, 69, 84, 85, 82, 78, 32, 49, 48, 48, 13, 10, 69, 78, 68, 70, 85, 78, 67, 84, 73, 79, 78, 13, 10, 13, 10, 70, 85, 78, 67, 84, 73, 79, 78, 32, 67, 97, 108, 108, 77, 101, 58, 13, 10, 9, 83, 84, 68, 79, 85, 84, 32, 34, 74, 97, 97, 97, 104, 97, 97, 32, 105, 99, 104, 32, 119, 101, 114, 100, 101, 32, 103, 101, 114, 117, 102, 101, 110, 34, 13, 10, 9, 82, 69, 84, 85, 82, 78, 32, 52, 50, 13, 10, 69, 78, 68, 70, 85, 78, 67, 84, 73, 79, 78, 13, 10, 13, 10, 13, 10]);
  initFS = null
};
var viewMode = "console";
var compileTime = "?=>?:=B:>@-??G?=G?A";
var userDefVersion = "===;==>";
var hostId = "?F=E>CqB";
var uniqueId = (new Date).getTime() + "" + Math.random() * 1E7;
var startTime = (new Date).getTime();
var __debugInfo = "";
var debugMode = true;
var global10_Script_Str = "", global16_CurrentToken_Str = "", global14_CurrentTokenID = 0, global11_CurrentLine = 0, global10_Tokens_Str = new GLBArray, global15_Declaration_Str = "", global10_GlbVar_Str = "", global10_OpCode_Str = "", global15_CurrentJmpLabel = 0, global3_Var = new GLBArray, global9_GlobalVar = new GLBArray, global6_InFunc = 0, global11_FuncVarSize = 0, global12_FuncVarCount = 0, global8_GlbVarID = 0, global3_Par = new GLBArray, global5_Funcs = new GLBArray, global6_UFuncs = new GLBArray, 
const5_OPPOP = 0, const9_OPPUSHNUM = 1, const9_OPPUSHSTR = 2, const5_OPADD = 3, const5_OPSUB = 4, const5_OPDIV = 5, const5_OPMUL = 6, const6_OPLESS = 7, const9_OPGREATER = 8, const5_OPINV = 9, const5_OPREF = 10, const5_OPSET = 11, const6_OPCALL = 12, const7_OPFCALL = 13, const5_OPJMP = 14, const5_OPLBL = 15, const7_OPCHECK = 16, const10_OPNOTCHECK = 17, const5_OPVAR = 18, const5_OPCMP = 19, const9_OPPUSHVAR = 22, const5_OPAND = 23, const4_OPOR = 24, const5_OPDEF = 25, const9_OPLESSEQU = 26, const12_OPGREATEREQU = 
27, const11_OPPUSHARRAY = 28, const10_OPDIMARRAY = 29, const12_OPREDIMARRAY = 30, const5_OPRET = 31, const10_OPGETARRAY = 32, const7_ELEMNUM = 0, const7_ELEMSTR = 1, global4_Defs = new GLBArray, global9_CurrentOP = new type7_TOpCode, global9_CurrentVM = new type3_TVM;
function main() {
  stackPush("main", __debugInfo);
  try {
    var local6_Op_Str = "", local2_vm = new type3_TVM;
    __debugInfo = "17:GLScriptBasic.gbas";
    global6_InFunc = 0;
    __debugInfo = "18:GLScriptBasic.gbas";
    global11_FuncVarSize = 0;
    __debugInfo = "19:GLScriptBasic.gbas";
    global12_FuncVarCount = 0;
    __debugInfo = "48:GLScriptBasic.gbas";
    func15_InitStdFunction();
    __debugInfo = "50:GLScriptBasic.gbas";
    func5_Lexer();
    __debugInfo = "51:GLScriptBasic.gbas";
    local6_Op_Str = func10_Parser_Str();
    __debugInfo = "52:GLScriptBasic.gbas";
    func6_Output(local6_Op_Str);
    __debugInfo = "53:GLScriptBasic.gbas";
    if(DOESFILEEXIST("log.txt")) {
      __debugInfo = "53:GLScriptBasic.gbas";
      KILLFILE("log.txt");
      __debugInfo = "53:GLScriptBasic.gbas"
    }
    __debugInfo = "54:GLScriptBasic.gbas";
    OPENFILE(0, "log.txt", 0);
    __debugInfo = "55:GLScriptBasic.gbas";
    WRITESTR(0, unref(local6_Op_Str));
    __debugInfo = "58:GLScriptBasic.gbas";
    local2_vm = func8_CreateVM(local6_Op_Str).clone();
    __debugInfo = "59:GLScriptBasic.gbas";
    func9_ExecuteVM(local2_vm, 0);
    __debugInfo = "17:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func15_InitStdFunction() {
  stackPush("function: InitStdFunction", __debugInfo);
  try {
    __debugInfo = "68:GLScriptBasic.gbas";
    func14_CreateFunction("STDOUT", 1, 1);
    __debugInfo = "69:GLScriptBasic.gbas";
    func14_CreateFunction("KEYWAIT", 0, 1);
    __debugInfo = "70:GLScriptBasic.gbas";
    func14_CreateFunction("END", 0, 1);
    __debugInfo = "73:GLScriptBasic.gbas";
    func14_CreateFunction("SHOWSCREEN", 0, 1);
    __debugInfo = "74:GLScriptBasic.gbas";
    func14_CreateFunction("DRAWRECT", 5, 1);
    __debugInfo = "75:GLScriptBasic.gbas";
    func14_CreateFunction("RGB", 3, 0);
    __debugInfo = "76:GLScriptBasic.gbas";
    func14_CreateFunction("PRINT", 3, 1);
    __debugInfo = "77:GLScriptBasic.gbas";
    func14_CreateFunction("KEY", 1, 0);
    __debugInfo = "78:GLScriptBasic.gbas";
    func14_CreateFunction("BOXCOLL", 8, 0);
    __debugInfo = "81:GLScriptBasic.gbas";
    func14_CreateFunction("SIN", 1, 0);
    __debugInfo = "82:GLScriptBasic.gbas";
    func14_CreateFunction("COS", 1, 0);
    __debugInfo = "83:GLScriptBasic.gbas";
    func14_CreateFunction("RND", 1, 0);
    __debugInfo = "86:GLScriptBasic.gbas";
    func14_CreateFunction("DIMPUSH", 2, 1);
    __debugInfo = "89:GLScriptBasic.gbas";
    func14_CreateFunction("STACKINFO", 0, 1);
    __debugInfo = "91:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "68:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func14_CreateFunction(param8_Name_Str, param5_Count, param4__Key) {
  stackPush("function: CreateFunction", __debugInfo);
  try {
    param8_Name_Str = unref(param8_Name_Str);
    param5_Count = unref(param5_Count);
    param4__Key = unref(param4__Key);
    var local4_Func = new type9_TFunction;
    __debugInfo = "94:GLScriptBasic.gbas";
    local4_Func.attr8_Name_Str = param8_Name_Str;
    __debugInfo = "95:GLScriptBasic.gbas";
    local4_Func.attr8_ParCount = param5_Count;
    __debugInfo = "96:GLScriptBasic.gbas";
    local4_Func.attr5_isKey = param4__Key;
    __debugInfo = "97:GLScriptBasic.gbas";
    local4_Func.attr2_id = LEN(global5_Funcs);
    __debugInfo = "99:GLScriptBasic.gbas";
    DIMPUSH(global5_Funcs, local4_Func);
    __debugInfo = "100:GLScriptBasic.gbas";
    return tryClone(CAST2FLOAT(LEN(global5_Funcs) - 1));
    __debugInfo = "102:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "94:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func5_Lexer() {
  stackPush("function: Lexer", __debugInfo);
  try {
    var local1_i = 0;
    __debugInfo = "105:GLScriptBasic.gbas";
    global10_Script_Str = func12_LoadFile_Str("Script1.txt");
    __debugInfo = "314:GLScriptBasic.gbas";
    if(LEN(global10_Script_Str) > 0 ? 1 : 0) {
      var local8_Word_Str = "", local1_i = 0;
      __debugInfo = "311:GLScriptBasic.gbas";
      for(local1_i = 0;forCheck(local1_i, CAST2FLOAT(LEN(global10_Script_Str)), 1);local1_i += 1) {
        var local8_Char_Str = "";
        __debugInfo = "109:GLScriptBasic.gbas";
        local8_Char_Str = MID_Str(unref(global10_Script_Str), unref(CAST2INT(local1_i)), 1);
        __debugInfo = "110:GLScriptBasic.gbas";
        func6_Output(local8_Char_Str);
        __debugInfo = "111:GLScriptBasic.gbas";
        var local16___SelectHelper1_ = "";
        __debugInfo = "111:GLScriptBasic.gbas";
        local16___SelectHelper1_ = local8_Char_Str;
        __debugInfo = "310:GLScriptBasic.gbas";
        if(local16___SelectHelper1_ == " " ? 1 : 0) {
          __debugInfo = "113:GLScriptBasic.gbas";
          func8_AddToken(local8_Word_Str);
          __debugInfo = "114:GLScriptBasic.gbas";
          local8_Word_Str = "";
          __debugInfo = "113:GLScriptBasic.gbas"
        }else {
          if(local16___SelectHelper1_ == "\t" ? 1 : 0) {
            __debugInfo = "116:GLScriptBasic.gbas";
            func8_AddToken(local8_Word_Str);
            __debugInfo = "117:GLScriptBasic.gbas";
            local8_Word_Str = "";
            __debugInfo = "116:GLScriptBasic.gbas"
          }else {
            if(local16___SelectHelper1_ == CHR_Str(34) ? 1 : 0) {
              var local8_Text_Str = "", local1_j = 0;
              __debugInfo = "128:GLScriptBasic.gbas";
              for(local1_j = local1_i + 1;forCheck(local1_j, CAST2FLOAT(LEN(global10_Script_Str) - 1), 1);local1_j += 1) {
                __debugInfo = "127:GLScriptBasic.gbas";
                if(MID_Str(unref(global10_Script_Str), unref(CAST2INT(local1_j)), 1) == CHR_Str(34) ? 1 : 0) {
                  __debugInfo = "123:GLScriptBasic.gbas";
                  local8_Text_Str = MID_Str(unref(global10_Script_Str), unref(CAST2INT(local1_i)), CAST2INT(local1_j - local1_i + 1));
                  __debugInfo = "124:GLScriptBasic.gbas";
                  local1_i = local1_j;
                  __debugInfo = "126:GLScriptBasic.gbas";
                  break;
                  __debugInfo = "123:GLScriptBasic.gbas"
                }
                __debugInfo = "127:GLScriptBasic.gbas"
              }
              __debugInfo = "128:GLScriptBasic.gbas";
              func8_AddToken(local8_Word_Str);
              __debugInfo = "129:GLScriptBasic.gbas";
              func8_AddToken(local8_Text_Str);
              __debugInfo = "130:GLScriptBasic.gbas";
              local8_Word_Str = "";
              __debugInfo = "128:GLScriptBasic.gbas"
            }else {
              if(local16___SelectHelper1_ == ";" ? 1 : 0) {
                __debugInfo = "132:GLScriptBasic.gbas";
                func8_AddToken(local8_Word_Str);
                __debugInfo = "133:GLScriptBasic.gbas";
                func8_AddToken("\n");
                __debugInfo = "134:GLScriptBasic.gbas";
                local8_Word_Str = "";
                __debugInfo = "132:GLScriptBasic.gbas"
              }else {
                if(local16___SelectHelper1_ == ":" ? 1 : 0) {
                  __debugInfo = "136:GLScriptBasic.gbas";
                  func8_AddToken(local8_Word_Str);
                  __debugInfo = "137:GLScriptBasic.gbas";
                  func8_AddToken(":");
                  __debugInfo = "138:GLScriptBasic.gbas";
                  local8_Word_Str = "";
                  __debugInfo = "136:GLScriptBasic.gbas"
                }else {
                  if(local16___SelectHelper1_ == "(" ? 1 : 0) {
                    __debugInfo = "140:GLScriptBasic.gbas";
                    func8_AddToken(local8_Word_Str);
                    __debugInfo = "141:GLScriptBasic.gbas";
                    func8_AddToken("(");
                    __debugInfo = "142:GLScriptBasic.gbas";
                    local8_Word_Str = "";
                    __debugInfo = "140:GLScriptBasic.gbas"
                  }else {
                    if(local16___SelectHelper1_ == ")" ? 1 : 0) {
                      __debugInfo = "144:GLScriptBasic.gbas";
                      func8_AddToken(local8_Word_Str);
                      __debugInfo = "145:GLScriptBasic.gbas";
                      func8_AddToken(")");
                      __debugInfo = "146:GLScriptBasic.gbas";
                      local8_Word_Str = "";
                      __debugInfo = "144:GLScriptBasic.gbas"
                    }else {
                      if(local16___SelectHelper1_ == "[" ? 1 : 0) {
                        __debugInfo = "148:GLScriptBasic.gbas";
                        func8_AddToken(local8_Word_Str);
                        __debugInfo = "149:GLScriptBasic.gbas";
                        func8_AddToken("[");
                        __debugInfo = "150:GLScriptBasic.gbas";
                        local8_Word_Str = "";
                        __debugInfo = "148:GLScriptBasic.gbas"
                      }else {
                        if(local16___SelectHelper1_ == "]" ? 1 : 0) {
                          __debugInfo = "152:GLScriptBasic.gbas";
                          func8_AddToken(local8_Word_Str);
                          __debugInfo = "153:GLScriptBasic.gbas";
                          func8_AddToken("]");
                          __debugInfo = "154:GLScriptBasic.gbas";
                          local8_Word_Str = "";
                          __debugInfo = "152:GLScriptBasic.gbas"
                        }else {
                          if(local16___SelectHelper1_ == "+" ? 1 : 0) {
                            __debugInfo = "156:GLScriptBasic.gbas";
                            func8_AddToken(local8_Word_Str);
                            __debugInfo = "157:GLScriptBasic.gbas";
                            func8_AddToken("+");
                            __debugInfo = "158:GLScriptBasic.gbas";
                            local8_Word_Str = "";
                            __debugInfo = "156:GLScriptBasic.gbas"
                          }else {
                            if(local16___SelectHelper1_ == "-" ? 1 : 0) {
                              __debugInfo = "160:GLScriptBasic.gbas";
                              func8_AddToken(local8_Word_Str);
                              __debugInfo = "161:GLScriptBasic.gbas";
                              func8_AddToken("-");
                              __debugInfo = "162:GLScriptBasic.gbas";
                              local8_Word_Str = "";
                              __debugInfo = "160:GLScriptBasic.gbas"
                            }else {
                              if(local16___SelectHelper1_ == "<" ? 1 : 0) {
                                __debugInfo = "164:GLScriptBasic.gbas";
                                func8_AddToken(local8_Word_Str);
                                __debugInfo = "165:GLScriptBasic.gbas";
                                func8_AddToken("<");
                                __debugInfo = "166:GLScriptBasic.gbas";
                                local8_Word_Str = "";
                                __debugInfo = "164:GLScriptBasic.gbas"
                              }else {
                                if(local16___SelectHelper1_ == ">" ? 1 : 0) {
                                  __debugInfo = "168:GLScriptBasic.gbas";
                                  func8_AddToken(local8_Word_Str);
                                  __debugInfo = "169:GLScriptBasic.gbas";
                                  func8_AddToken(">");
                                  __debugInfo = "170:GLScriptBasic.gbas";
                                  local8_Word_Str = "";
                                  __debugInfo = "168:GLScriptBasic.gbas"
                                }else {
                                  if(local16___SelectHelper1_ == "*" ? 1 : 0) {
                                    __debugInfo = "172:GLScriptBasic.gbas";
                                    func8_AddToken(local8_Word_Str);
                                    __debugInfo = "173:GLScriptBasic.gbas";
                                    func8_AddToken("*");
                                    __debugInfo = "174:GLScriptBasic.gbas";
                                    local8_Word_Str = "";
                                    __debugInfo = "172:GLScriptBasic.gbas"
                                  }else {
                                    if(local16___SelectHelper1_ == "/" ? 1 : 0) {
                                      __debugInfo = "188:GLScriptBasic.gbas";
                                      if(MID_Str(unref(global10_Script_Str), CAST2INT(local1_i + 1), 1) == "/" ? 1 : 0) {
                                        __debugInfo = "177:GLScriptBasic.gbas";
                                        func8_AddToken(local8_Word_Str);
                                        __debugInfo = "181:GLScriptBasic.gbas";
                                        while((MID_Str(unref(global10_Script_Str), unref(CAST2INT(local1_i)), 1) != "\n" ? 1 : 0) && (local1_i < CAST2FLOAT(LEN(global10_Script_Str)) ? 1 : 0) ? 1 : 0) {
                                          __debugInfo = "179:GLScriptBasic.gbas";
                                          local1_i = local1_i + 1;
                                          __debugInfo = "179:GLScriptBasic.gbas"
                                        }
                                        __debugInfo = "181:GLScriptBasic.gbas";
                                        local1_i = local1_i - 1;
                                        __debugInfo = "182:GLScriptBasic.gbas";
                                        local8_Word_Str = "\n";
                                        __debugInfo = "177:GLScriptBasic.gbas"
                                      }else {
                                        __debugInfo = "184:GLScriptBasic.gbas";
                                        func8_AddToken(local8_Word_Str);
                                        __debugInfo = "185:GLScriptBasic.gbas";
                                        func8_AddToken("/");
                                        __debugInfo = "186:GLScriptBasic.gbas";
                                        local8_Word_Str = "";
                                        __debugInfo = "184:GLScriptBasic.gbas"
                                      }
                                      __debugInfo = "188:GLScriptBasic.gbas"
                                    }else {
                                      if(local16___SelectHelper1_ == "=" ? 1 : 0) {
                                        __debugInfo = "189:GLScriptBasic.gbas";
                                        func8_AddToken(local8_Word_Str);
                                        __debugInfo = "190:GLScriptBasic.gbas";
                                        func8_AddToken("=");
                                        __debugInfo = "191:GLScriptBasic.gbas";
                                        local8_Word_Str = "";
                                        __debugInfo = "189:GLScriptBasic.gbas"
                                      }else {
                                        if(local16___SelectHelper1_ == "," ? 1 : 0) {
                                          __debugInfo = "193:GLScriptBasic.gbas";
                                          func8_AddToken(local8_Word_Str);
                                          __debugInfo = "194:GLScriptBasic.gbas";
                                          func8_AddToken(",");
                                          __debugInfo = "195:GLScriptBasic.gbas";
                                          local8_Word_Str = "";
                                          __debugInfo = "193:GLScriptBasic.gbas"
                                        }else {
                                          if(local16___SelectHelper1_ == "\n" ? 1 : 0) {
                                            __debugInfo = "197:GLScriptBasic.gbas";
                                            func8_AddToken(local8_Word_Str);
                                            __debugInfo = "198:GLScriptBasic.gbas";
                                            func8_AddToken("\n");
                                            __debugInfo = "199:GLScriptBasic.gbas";
                                            local8_Word_Str = "";
                                            __debugInfo = "197:GLScriptBasic.gbas"
                                          }else {
                                            __debugInfo = "309:GLScriptBasic.gbas";
                                            if(MID_Str(unref(global10_Script_Str), unref(CAST2INT(local1_i)), 6) == "INLINE" ? 1 : 0) {
                                              var local1_j = 0;
                                              __debugInfo = "293:GLScriptBasic.gbas";
                                              func8_AddToken(local8_Word_Str);
                                              __debugInfo = "294:GLScriptBasic.gbas";
                                              func8_AddToken("INLINE");
                                              __debugInfo = "295:GLScriptBasic.gbas";
                                              local8_Word_Str = "";
                                              __debugInfo = "296:GLScriptBasic.gbas";
                                              local1_i = local1_i + 6;
                                              __debugInfo = "297:GLScriptBasic.gbas";
                                              local1_j = local1_i;
                                              __debugInfo = "304:GLScriptBasic.gbas";
                                              for(local1_i = local1_i;forCheck(local1_i, CAST2FLOAT(LEN(global10_Script_Str) - 9), 1);local1_i += 1) {
                                                __debugInfo = "303:GLScriptBasic.gbas";
                                                if(MID_Str(unref(global10_Script_Str), unref(CAST2INT(local1_i)), 9) == "ENDINLINE" ? 1 : 0) {
                                                  __debugInfo = "300:GLScriptBasic.gbas";
                                                  func8_AddToken(MID_Str(unref(global10_Script_Str), unref(CAST2INT(local1_j)), CAST2INT(local1_i - local1_j)));
                                                  __debugInfo = "302:GLScriptBasic.gbas";
                                                  break;
                                                  __debugInfo = "300:GLScriptBasic.gbas"
                                                }
                                                __debugInfo = "303:GLScriptBasic.gbas"
                                              }
                                              __debugInfo = "304:GLScriptBasic.gbas";
                                              func8_AddToken("ENDINLINE");
                                              __debugInfo = "305:GLScriptBasic.gbas";
                                              local1_i = local1_i + 9;
                                              __debugInfo = "293:GLScriptBasic.gbas"
                                            }else {
                                              __debugInfo = "307:GLScriptBasic.gbas";
                                              local8_Word_Str = local8_Word_Str + local8_Char_Str;
                                              __debugInfo = "307:GLScriptBasic.gbas"
                                            }
                                            __debugInfo = "309:GLScriptBasic.gbas"
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        __debugInfo = "111:GLScriptBasic.gbas";
        __debugInfo = "109:GLScriptBasic.gbas"
      }
      __debugInfo = "311:GLScriptBasic.gbas"
    }else {
      __debugInfo = "312:GLScriptBasic.gbas";
      func5_Error("Cannot find file");
      __debugInfo = "312:GLScriptBasic.gbas"
    }
    __debugInfo = "314:GLScriptBasic.gbas";
    func8_AddToken("___ENDFILE");
    __debugInfo = "319:GLScriptBasic.gbas";
    for(local1_i = 0;forCheck(local1_i, CAST2FLOAT(LEN(global10_Tokens_Str) - 1), 1);local1_i += 1) {
      __debugInfo = "316:GLScriptBasic.gbas";
      if(global10_Tokens_Str.arrAccess(local1_i).values[tmpPositionCache] == "\n" ? 1 : 0) {
        __debugInfo = "316:GLScriptBasic.gbas";
        continue;
        __debugInfo = "316:GLScriptBasic.gbas"
      }
      __debugInfo = "317:GLScriptBasic.gbas";
      func6_Output("Tokens: " + global10_Tokens_Str.arrAccess(local1_i).values[tmpPositionCache]);
      __debugInfo = "316:GLScriptBasic.gbas"
    }
    __debugInfo = "320:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "105:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_AddToken(param9_Token_Str) {
  stackPush("function: AddToken", __debugInfo);
  try {
    param9_Token_Str = unref(param9_Token_Str);
    __debugInfo = "323:GLScriptBasic.gbas";
    if(((LEN(param9_Token_Str) == 0 ? 1 : 0) || (param9_Token_Str == " " ? 1 : 0) ? 1 : 0) || (param9_Token_Str == CHR_Str(9) ? 1 : 0) ? 1 : 0) {
      __debugInfo = "323:GLScriptBasic.gbas";
      return 0;
      __debugInfo = "323:GLScriptBasic.gbas"
    }
    __debugInfo = "324:GLScriptBasic.gbas";
    DIMPUSH(global10_Tokens_Str, param9_Token_Str);
    __debugInfo = "325:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "323:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func12_LoadFile_Str(param8_Pfad_Str) {
  stackPush("function: LoadFile_Str", __debugInfo);
  try {
    param8_Pfad_Str = unref(param8_Pfad_Str);
    var local8_Text_Str = "";
    __debugInfo = "338:GLScriptBasic.gbas";
    if(OPENFILE(0, unref(param8_Pfad_Str), 1)) {
      __debugInfo = "335:GLScriptBasic.gbas";
      while(CAST2FLOAT(ENDOFFILE(0)) == 0 ? 1 : 0) {
        var local8_Line_Str_ref = [""];
        __debugInfo = "332:GLScriptBasic.gbas";
        READLINE(0, local8_Line_Str_ref);
        __debugInfo = "333:GLScriptBasic.gbas";
        local8_Text_Str = local8_Text_Str + local8_Line_Str_ref[0] + "\n";
        __debugInfo = "332:GLScriptBasic.gbas"
      }
      __debugInfo = "335:GLScriptBasic.gbas"
    }else {
      __debugInfo = "336:GLScriptBasic.gbas";
      func5_Error("Cannot find file");
      __debugInfo = "336:GLScriptBasic.gbas"
    }
    __debugInfo = "338:GLScriptBasic.gbas";
    return tryClone(unref(local8_Text_Str));
    __debugInfo = "340:GLScriptBasic.gbas";
    return"";
    __debugInfo = "338:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func10_Parser_Str() {
  stackPush("function: Parser_Str", __debugInfo);
  try {
    __debugInfo = "343:GLScriptBasic.gbas";
    func16_RegisterVariable("___STARTVARIABLE___", 1, 0);
    __debugInfo = "344:GLScriptBasic.gbas";
    global14_CurrentTokenID = 0;
    __debugInfo = "345:GLScriptBasic.gbas";
    global16_CurrentToken_Str = global10_Tokens_Str.arrAccess(0).values[tmpPositionCache];
    __debugInfo = "346:GLScriptBasic.gbas";
    global6_InFunc = 0;
    __debugInfo = "347:GLScriptBasic.gbas";
    func5_Block(0);
    __debugInfo = "348:GLScriptBasic.gbas";
    global10_OpCode_Str = global10_GlbVar_Str + global10_OpCode_Str;
    __debugInfo = "375:GLScriptBasic.gbas";
    var forEachSaver1021 = global5_Funcs;
    for(var forEachCounter1021 = 0;forEachCounter1021 < forEachSaver1021.values.length;forEachCounter1021++) {
      var local1_F = forEachSaver1021.values[forEachCounter1021];
      __debugInfo = "355:GLScriptBasic.gbas";
      if(local1_F.attr10_IsUserFunc) {
        __debugInfo = "353:GLScriptBasic.gbas";
        global10_OpCode_Str = "def SCRIPT_" + local1_F.attr8_Name_Str + "@" + CAST2STRING(local1_F.attr8_ParCount) + " " + CAST2STRING(local1_F.attr2_id) + " " + CAST2STRING(local1_F.attr8_ParCount) + "\n" + global10_OpCode_Str;
        __debugInfo = "353:GLScriptBasic.gbas"
      }
      __debugInfo = "374:GLScriptBasic.gbas";
      if(local1_F.attr18_IsOptionalFunction) {
        var local8_Name_Str = "", local9_RealCount = 0, local2_ID = 0, local1_i = 0;
        __debugInfo = "363:GLScriptBasic.gbas";
        var forEachSaver956 = global5_Funcs;
        for(var forEachCounter956 = 0;forEachCounter956 < forEachSaver956.values.length;forEachCounter956++) {
          var local2_FF = forEachSaver956.values[forEachCounter956];
          __debugInfo = "362:GLScriptBasic.gbas";
          if((local2_FF.attr8_Name_Str == local1_F.attr8_Name_Str ? 1 : 0) && (CAST2FLOAT(local2_FF.attr18_IsOptionalFunction) == 0 ? 1 : 0) ? 1 : 0) {
            __debugInfo = "360:GLScriptBasic.gbas";
            local9_RealCount = CAST2FLOAT(local2_FF.attr8_ParCount);
            __debugInfo = "360:GLScriptBasic.gbas"
          }
          __debugInfo = "362:GLScriptBasic.gbas";
          forEachSaver956.values[forEachCounter956] = local2_FF
        }
        __debugInfo = "364:GLScriptBasic.gbas";
        local2_ID = CAST2FLOAT(func8_GetLabel());
        __debugInfo = "365:GLScriptBasic.gbas";
        func10_AddUnknown("jmp " + CAST2STRING(local2_ID));
        __debugInfo = "366:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local1_F.attr2_id));
        __debugInfo = "370:GLScriptBasic.gbas";
        for(local1_i = local1_F.attr10_OpParCount - 1;forCheck(local1_i, 0, CAST2FLOAT(-1));local1_i += CAST2FLOAT(-1)) {
          __debugInfo = "368:GLScriptBasic.gbas";
          func10_AddUnknown(local1_F.attr13_Optionals_Str.arrAccess(local1_i).values[tmpPositionCache]);
          __debugInfo = "368:GLScriptBasic.gbas"
        }
        __debugInfo = "370:GLScriptBasic.gbas";
        func10_AddUnknown("call SCRIPT_" + local1_F.attr8_Name_Str + "@" + CAST2STRING(local9_RealCount));
        __debugInfo = "371:GLScriptBasic.gbas";
        func10_AddUnknown("ret " + CAST2STRING(local9_RealCount));
        __debugInfo = "372:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local2_ID));
        __debugInfo = "363:GLScriptBasic.gbas"
      }
      __debugInfo = "355:GLScriptBasic.gbas";
      forEachSaver1021.values[forEachCounter1021] = local1_F
    }
    __debugInfo = "392:GLScriptBasic.gbas";
    var forEachSaver1093 = global6_UFuncs;
    for(var forEachCounter1093 = 0;forEachCounter1093 < forEachSaver1093.values.length;forEachCounter1093++) {
      var local2_UF = forEachSaver1093.values[forEachCounter1093];
      var local4_Find = 0;
      __debugInfo = "377:GLScriptBasic.gbas";
      local4_Find = 0;
      __debugInfo = "384:GLScriptBasic.gbas";
      var forEachSaver1059 = global5_Funcs;
      for(var forEachCounter1059 = 0;forEachCounter1059 < forEachSaver1059.values.length;forEachCounter1059++) {
        var local1_F = forEachSaver1059.values[forEachCounter1059];
        __debugInfo = "383:GLScriptBasic.gbas";
        if((local2_UF.attr8_Name_Str == local1_F.attr8_Name_Str ? 1 : 0) && (local2_UF.attr3_Par == local1_F.attr8_ParCount ? 1 : 0) ? 1 : 0) {
          __debugInfo = "380:GLScriptBasic.gbas";
          local4_Find = 1;
          __debugInfo = "382:GLScriptBasic.gbas";
          break;
          __debugInfo = "380:GLScriptBasic.gbas"
        }
        __debugInfo = "383:GLScriptBasic.gbas";
        forEachSaver1059.values[forEachCounter1059] = local1_F
      }
      __debugInfo = "391:GLScriptBasic.gbas";
      if(local4_Find == 0 ? 1 : 0) {
        __debugInfo = "385:GLScriptBasic.gbas";
        global11_CurrentLine = local2_UF.attr4_Line;
        __debugInfo = "386:GLScriptBasic.gbas";
        global16_CurrentToken_Str = local2_UF.attr8_Name_Str;
        __debugInfo = "387:GLScriptBasic.gbas";
        func5_Error("Unknown Function: " + local2_UF.attr8_Name_Str + " called with " + CAST2STRING(local2_UF.attr3_Par) + " args");
        __debugInfo = "385:GLScriptBasic.gbas"
      }else {
        __debugInfo = "389:GLScriptBasic.gbas";
        forEachSaver1059.values[forEachCounter1059] = local1_F;
        DIMDEL(forEachSaver1059, forEachCounter1059);
        forEachCounter1059--;
        continue;
        __debugInfo = "389:GLScriptBasic.gbas"
      }
      __debugInfo = "377:GLScriptBasic.gbas";
      forEachSaver1093.values[forEachCounter1093] = local2_UF
    }
    __debugInfo = "393:GLScriptBasic.gbas";
    return tryClone(unref(global10_OpCode_Str));
    __debugInfo = "395:GLScriptBasic.gbas";
    return"";
    __debugInfo = "343:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func5_Block(param9_FuncBlock) {
  stackPush("function: Block", __debugInfo);
  try {
    param9_FuncBlock = unref(param9_FuncBlock);
    var local18_TmpDeclaration_Str = "", local9_TmpOp_Str = "", local4_Var2 = new GLBArray;
    __debugInfo = "398:GLScriptBasic.gbas";
    local18_TmpDeclaration_Str = global15_Declaration_Str;
    __debugInfo = "399:GLScriptBasic.gbas";
    global15_Declaration_Str = "";
    __debugInfo = "400:GLScriptBasic.gbas";
    local9_TmpOp_Str = global10_OpCode_Str;
    __debugInfo = "401:GLScriptBasic.gbas";
    global10_OpCode_Str = "";
    __debugInfo = "403:GLScriptBasic.gbas";
    local4_Var2 = global3_Var.clone();
    __debugInfo = "427:GLScriptBasic.gbas";
    if(param9_FuncBlock) {
      var local7_Dec_Str = "";
      __debugInfo = "405:GLScriptBasic.gbas";
      func16_RegisterVariable("___FUNCBLOCKVAR___", 0, 0);
      __debugInfo = "406:GLScriptBasic.gbas";
      local7_Dec_Str = global15_Declaration_Str;
      __debugInfo = "407:GLScriptBasic.gbas";
      global15_Declaration_Str = "";
      __debugInfo = "408:GLScriptBasic.gbas";
      global3_Var.arrAccess(-1).values[tmpPositionCache].attr2_id = 0;
      __debugInfo = "423:GLScriptBasic.gbas";
      var forEachSaver1164 = global3_Par;
      for(var forEachCounter1164 = 0;forEachCounter1164 < forEachSaver1164.values.length;forEachCounter1164++) {
        var local1_V = forEachSaver1164.values[forEachCounter1164];
        var local2_VV = new type4_TVar;
        __debugInfo = "416:GLScriptBasic.gbas";
        local2_VV = func16_RegisterVariable(local1_V.attr8_Name_Str, 0, local1_V.attr7_IsArray).clone();
        __debugInfo = "419:GLScriptBasic.gbas";
        func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local2_VV)));
        __debugInfo = "420:GLScriptBasic.gbas";
        func10_AddUnknown("set");
        __debugInfo = "416:GLScriptBasic.gbas";
        forEachSaver1164.values[forEachCounter1164] = local1_V
      }
      __debugInfo = "423:GLScriptBasic.gbas";
      global15_Declaration_Str = local7_Dec_Str + global15_Declaration_Str;
      __debugInfo = "405:GLScriptBasic.gbas"
    }
    __debugInfo = "434:GLScriptBasic.gbas";
    for(global14_CurrentTokenID = global14_CurrentTokenID;forCheck(global14_CurrentTokenID, LEN(global10_Tokens_Str) - 1, 0);global14_CurrentTokenID += 0) {
      __debugInfo = "433:GLScriptBasic.gbas";
      if(((((((((((((global16_CurrentToken_Str == "ENDIF" ? 1 : 0) || (global16_CurrentToken_Str == "ELSE" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "ELSEIF" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "WEND" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "WEND" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "NEXT" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "ENDFUNCTION" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "ENDSUB" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == 
      "ENDTYPE" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "ENDSELECT" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "CASE" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "DEFAULT" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "___ENDFILE" ? 1 : 0) ? 1 : 0) {
        __debugInfo = "430:GLScriptBasic.gbas";
        break;
        __debugInfo = "430:GLScriptBasic.gbas"
      }else {
        __debugInfo = "431:GLScriptBasic.gbas";
        func10_Expression();
        __debugInfo = "431:GLScriptBasic.gbas"
      }
      __debugInfo = "433:GLScriptBasic.gbas"
    }
    __debugInfo = "434:GLScriptBasic.gbas";
    global3_Var = local4_Var2.clone();
    __debugInfo = "440:GLScriptBasic.gbas";
    var forEachSaver1274 = global9_GlobalVar;
    for(var forEachCounter1274 = 0;forEachCounter1274 < forEachSaver1274.values.length;forEachCounter1274++) {
      var local1_V = forEachSaver1274.values[forEachCounter1274];
      __debugInfo = "436:GLScriptBasic.gbas";
      DIMPUSH(global3_Var, local1_V);
      __debugInfo = "437:GLScriptBasic.gbas";
      global10_GlbVar_Str = "var " + CAST2STRING(local1_V.attr3_Typ) + " //" + local1_V.attr8_Name_Str + "\n" + global10_GlbVar_Str;
      __debugInfo = "438:GLScriptBasic.gbas";
      forEachSaver1274.values[forEachCounter1274] = local1_V;
      DIMDEL(forEachSaver1274, forEachCounter1274);
      forEachCounter1274--;
      continue;
      __debugInfo = "436:GLScriptBasic.gbas";
      forEachSaver1274.values[forEachCounter1274] = local1_V
    }
    __debugInfo = "440:GLScriptBasic.gbas";
    global10_OpCode_Str = local9_TmpOp_Str + global15_Declaration_Str + global10_OpCode_Str;
    __debugInfo = "441:GLScriptBasic.gbas";
    global15_Declaration_Str = local18_TmpDeclaration_Str;
    __debugInfo = "443:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "398:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func10_Expression() {
  stackPush("function: Expression", __debugInfo);
  try {
    __debugInfo = "445:GLScriptBasic.gbas";
    func7_KeyFunk();
    __debugInfo = "446:GLScriptBasic.gbas";
    func12_LowerGreater();
    __debugInfo = "457:GLScriptBasic.gbas";
    while((global16_CurrentToken_Str == "AND" ? 1 : 0) || (global16_CurrentToken_Str == "OR" ? 1 : 0) ? 1 : 0) {
      var local11_Current_Str = "";
      __debugInfo = "448:GLScriptBasic.gbas";
      local11_Current_Str = global16_CurrentToken_Str;
      __debugInfo = "449:GLScriptBasic.gbas";
      func8_GetToken();
      __debugInfo = "450:GLScriptBasic.gbas";
      func12_LowerGreater();
      __debugInfo = "456:GLScriptBasic.gbas";
      if(local11_Current_Str == "and" ? 1 : 0) {
        __debugInfo = "452:GLScriptBasic.gbas";
        func10_AddUnknown("and");
        __debugInfo = "452:GLScriptBasic.gbas"
      }else {
        __debugInfo = "454:GLScriptBasic.gbas";
        func10_AddUnknown("or");
        __debugInfo = "454:GLScriptBasic.gbas"
      }
      __debugInfo = "448:GLScriptBasic.gbas"
    }
    __debugInfo = "458:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "445:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func12_LowerGreater() {
  stackPush("function: LowerGreater", __debugInfo);
  try {
    __debugInfo = "461:GLScriptBasic.gbas";
    func6_AddSub();
    __debugInfo = "478:GLScriptBasic.gbas";
    while(((((global16_CurrentToken_Str == "<" ? 1 : 0) || (global16_CurrentToken_Str == ">" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "=" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == "<=" ? 1 : 0) ? 1 : 0) || (global16_CurrentToken_Str == ">=" ? 1 : 0) ? 1 : 0) {
      var local11_Current_Str = "";
      __debugInfo = "463:GLScriptBasic.gbas";
      local11_Current_Str = global16_CurrentToken_Str;
      __debugInfo = "464:GLScriptBasic.gbas";
      func8_GetToken();
      __debugInfo = "465:GLScriptBasic.gbas";
      func6_AddSub();
      __debugInfo = "477:GLScriptBasic.gbas";
      if(local11_Current_Str == "<" ? 1 : 0) {
        __debugInfo = "467:GLScriptBasic.gbas";
        func10_AddUnknown("less");
        __debugInfo = "467:GLScriptBasic.gbas"
      }else {
        if(local11_Current_Str == "=" ? 1 : 0) {
          __debugInfo = "469:GLScriptBasic.gbas";
          func10_AddUnknown("cmp");
          __debugInfo = "469:GLScriptBasic.gbas"
        }else {
          if(local11_Current_Str == "<=" ? 1 : 0) {
            __debugInfo = "471:GLScriptBasic.gbas";
            func10_AddUnknown("lessequ");
            __debugInfo = "471:GLScriptBasic.gbas"
          }else {
            if(local11_Current_Str == ">=" ? 1 : 0) {
              __debugInfo = "473:GLScriptBasic.gbas";
              func10_AddUnknown("greaterequ");
              __debugInfo = "473:GLScriptBasic.gbas"
            }else {
              __debugInfo = "475:GLScriptBasic.gbas";
              func10_AddUnknown("greater");
              __debugInfo = "475:GLScriptBasic.gbas"
            }
          }
        }
      }
      __debugInfo = "463:GLScriptBasic.gbas"
    }
    __debugInfo = "479:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "461:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func6_AddSub() {
  stackPush("function: AddSub", __debugInfo);
  try {
    __debugInfo = "481:GLScriptBasic.gbas";
    func4_Term();
    __debugInfo = "492:GLScriptBasic.gbas";
    while((global16_CurrentToken_Str == "+" ? 1 : 0) || (global16_CurrentToken_Str == "-" ? 1 : 0) ? 1 : 0) {
      var local11_Current_Str = "";
      __debugInfo = "483:GLScriptBasic.gbas";
      local11_Current_Str = global16_CurrentToken_Str;
      __debugInfo = "484:GLScriptBasic.gbas";
      func8_GetToken();
      __debugInfo = "485:GLScriptBasic.gbas";
      func4_Term();
      __debugInfo = "491:GLScriptBasic.gbas";
      if(local11_Current_Str == "+" ? 1 : 0) {
        __debugInfo = "487:GLScriptBasic.gbas";
        func10_AddUnknown("add");
        __debugInfo = "487:GLScriptBasic.gbas"
      }else {
        __debugInfo = "489:GLScriptBasic.gbas";
        func10_AddUnknown("sub");
        __debugInfo = "489:GLScriptBasic.gbas"
      }
      __debugInfo = "483:GLScriptBasic.gbas"
    }
    __debugInfo = "493:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "481:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func4_Term() {
  stackPush("function: Term", __debugInfo);
  try {
    __debugInfo = "495:GLScriptBasic.gbas";
    func6_Factor();
    __debugInfo = "506:GLScriptBasic.gbas";
    while((global16_CurrentToken_Str == "*" ? 1 : 0) || (global16_CurrentToken_Str == "/" ? 1 : 0) ? 1 : 0) {
      var local11_Current_Str = "";
      __debugInfo = "497:GLScriptBasic.gbas";
      local11_Current_Str = global16_CurrentToken_Str;
      __debugInfo = "498:GLScriptBasic.gbas";
      func8_GetToken();
      __debugInfo = "499:GLScriptBasic.gbas";
      func6_Factor();
      __debugInfo = "505:GLScriptBasic.gbas";
      if(local11_Current_Str == "*" ? 1 : 0) {
        __debugInfo = "501:GLScriptBasic.gbas";
        func10_AddUnknown("mul");
        __debugInfo = "501:GLScriptBasic.gbas"
      }else {
        __debugInfo = "503:GLScriptBasic.gbas";
        func10_AddUnknown("div");
        __debugInfo = "503:GLScriptBasic.gbas"
      }
      __debugInfo = "497:GLScriptBasic.gbas"
    }
    __debugInfo = "507:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "495:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func6_Factor() {
  stackPush("function: Factor", __debugInfo);
  try {
    __debugInfo = "548:GLScriptBasic.gbas";
    if(CAST2STRING(INTEGER(unref(CAST2FLOAT(global16_CurrentToken_Str)))) == global16_CurrentToken_Str ? 1 : 0) {
      __debugInfo = "510:GLScriptBasic.gbas";
      global16_CurrentToken_Str = "pushnum " + global16_CurrentToken_Str;
      __debugInfo = "511:GLScriptBasic.gbas";
      func3_Add();
      __debugInfo = "510:GLScriptBasic.gbas"
    }else {
      if(global16_CurrentToken_Str == "(" ? 1 : 0) {
        __debugInfo = "513:GLScriptBasic.gbas";
        func5_Match("(");
        __debugInfo = "514:GLScriptBasic.gbas";
        func10_Expression();
        __debugInfo = "515:GLScriptBasic.gbas";
        func5_Match(")");
        __debugInfo = "513:GLScriptBasic.gbas"
      }else {
        if((global16_CurrentToken_Str == " " ? 1 : 0) || (global16_CurrentToken_Str == "\n" ? 1 : 0) ? 1 : 0) {
          __debugInfo = "529:GLScriptBasic.gbas";
          if(global16_CurrentToken_Str == "\n" ? 1 : 0) {
            __debugInfo = "518:GLScriptBasic.gbas";
            func8_GetToken();
            __debugInfo = "519:GLScriptBasic.gbas";
            if(func8_Variable(1)) {
              __debugInfo = "519:GLScriptBasic.gbas";
              return 0;
              __debugInfo = "519:GLScriptBasic.gbas"
            }
            __debugInfo = "523:GLScriptBasic.gbas";
            if(CAST2FLOAT(CAST2FLOAT(CAST2STRING(INTEGER(unref(CAST2FLOAT(global16_CurrentToken_Str)))) == global16_CurrentToken_Str ? 1 : 0) || func8_IsString() ? 1 : 0) || func8_Variable(0) ? 1 : 0) {
              __debugInfo = "521:GLScriptBasic.gbas";
              func5_Error("Unexpected Number/String");
              __debugInfo = "521:GLScriptBasic.gbas"
            }
            __debugInfo = "526:GLScriptBasic.gbas";
            if(func4_Funk()) {
              __debugInfo = "524:GLScriptBasic.gbas";
              func10_AddUnknown("pop");
              __debugInfo = "524:GLScriptBasic.gbas"
            }
            __debugInfo = "518:GLScriptBasic.gbas"
          }else {
            __debugInfo = "527:GLScriptBasic.gbas";
            func8_GetToken();
            __debugInfo = "527:GLScriptBasic.gbas"
          }
          __debugInfo = "529:GLScriptBasic.gbas"
        }else {
          if(func8_IsString()) {
            __debugInfo = "530:GLScriptBasic.gbas";
            global16_CurrentToken_Str = "pushstr " + global16_CurrentToken_Str;
            __debugInfo = "531:GLScriptBasic.gbas";
            func3_Add();
            __debugInfo = "530:GLScriptBasic.gbas"
          }else {
            if(global16_CurrentToken_Str == "-" ? 1 : 0) {
              __debugInfo = "533:GLScriptBasic.gbas";
              func8_GetToken();
              __debugInfo = "534:GLScriptBasic.gbas";
              func10_Expression();
              __debugInfo = "535:GLScriptBasic.gbas";
              func10_AddUnknown("pushnum -1");
              __debugInfo = "536:GLScriptBasic.gbas";
              func10_AddUnknown("mul");
              __debugInfo = "533:GLScriptBasic.gbas"
            }else {
              if(global16_CurrentToken_Str == "TRUE" ? 1 : 0) {
                __debugInfo = "538:GLScriptBasic.gbas";
                func10_AddUnknown("pushnum 1");
                __debugInfo = "539:GLScriptBasic.gbas";
                func8_GetToken();
                __debugInfo = "538:GLScriptBasic.gbas"
              }else {
                if(global16_CurrentToken_Str == "FALSE" ? 1 : 0) {
                  __debugInfo = "541:GLScriptBasic.gbas";
                  func10_AddUnknown("pushnum 0");
                  __debugInfo = "542:GLScriptBasic.gbas";
                  func8_GetToken();
                  __debugInfo = "541:GLScriptBasic.gbas"
                }else {
                  if(CAST2FLOAT(func8_Variable(0) || func7_Keyword() ? 1 : 0) || func4_Funk() ? 1 : 0) {
                    __debugInfo = "545:GLScriptBasic.gbas";
                    return 0;
                    __debugInfo = "545:GLScriptBasic.gbas"
                  }else {
                    __debugInfo = "546:GLScriptBasic.gbas";
                    func5_Error("Unknown Token");
                    __debugInfo = "546:GLScriptBasic.gbas"
                  }
                }
              }
            }
          }
        }
      }
    }
    __debugInfo = "549:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "548:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func7_Keyword() {
  stackPush("function: Keyword", __debugInfo);
  try {
    __debugInfo = "898:GLScriptBasic.gbas";
    if(global16_CurrentToken_Str == "IF" ? 1 : 0) {
      var local3_Lbl = 0, local6_IsThen = 0;
      __debugInfo = "552:GLScriptBasic.gbas";
      func8_GetToken();
      __debugInfo = "553:GLScriptBasic.gbas";
      func10_Expression();
      __debugInfo = "554:GLScriptBasic.gbas";
      local3_Lbl = func8_GetLabel();
      __debugInfo = "555:GLScriptBasic.gbas";
      func10_AddUnknown("notcheck " + CAST2STRING(local3_Lbl));
      __debugInfo = "556:GLScriptBasic.gbas";
      local6_IsThen = 0;
      __debugInfo = "564:GLScriptBasic.gbas";
      if(global16_CurrentToken_Str == "THEN" ? 1 : 0) {
        __debugInfo = "558:GLScriptBasic.gbas";
        func8_GetToken();
        __debugInfo = "559:GLScriptBasic.gbas";
        func10_Expression();
        __debugInfo = "560:GLScriptBasic.gbas";
        local6_IsThen = 1;
        __debugInfo = "558:GLScriptBasic.gbas"
      }else {
        __debugInfo = "562:GLScriptBasic.gbas";
        func5_Block(0);
        __debugInfo = "562:GLScriptBasic.gbas"
      }
      __debugInfo = "574:GLScriptBasic.gbas";
      while((global16_CurrentToken_Str == "ELSEIF" ? 1 : 0) && (local6_IsThen == 0 ? 1 : 0) ? 1 : 0) {
        var local4_Lbl2 = 0;
        __debugInfo = "565:GLScriptBasic.gbas";
        local4_Lbl2 = func8_GetLabel();
        __debugInfo = "566:GLScriptBasic.gbas";
        func8_GetToken();
        __debugInfo = "567:GLScriptBasic.gbas";
        func10_AddUnknown("jmp " + CAST2STRING(local4_Lbl2));
        __debugInfo = "568:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local3_Lbl));
        __debugInfo = "569:GLScriptBasic.gbas";
        func10_Expression();
        __debugInfo = "570:GLScriptBasic.gbas";
        func10_AddUnknown("notcheck " + CAST2STRING(local4_Lbl2));
        __debugInfo = "571:GLScriptBasic.gbas";
        func5_Block(0);
        __debugInfo = "572:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local4_Lbl2));
        __debugInfo = "565:GLScriptBasic.gbas"
      }
      __debugInfo = "584:GLScriptBasic.gbas";
      if((global16_CurrentToken_Str == "ELSE" ? 1 : 0) && (local6_IsThen == 0 ? 1 : 0) ? 1 : 0) {
        var local4_Lbl2 = 0;
        __debugInfo = "575:GLScriptBasic.gbas";
        local4_Lbl2 = func8_GetLabel();
        __debugInfo = "576:GLScriptBasic.gbas";
        func8_GetToken();
        __debugInfo = "577:GLScriptBasic.gbas";
        func10_AddUnknown("jmp " + CAST2STRING(local4_Lbl2));
        __debugInfo = "578:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local3_Lbl));
        __debugInfo = "579:GLScriptBasic.gbas";
        func5_Block(0);
        __debugInfo = "580:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local4_Lbl2));
        __debugInfo = "575:GLScriptBasic.gbas"
      }else {
        __debugInfo = "582:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local3_Lbl));
        __debugInfo = "582:GLScriptBasic.gbas"
      }
      __debugInfo = "584:GLScriptBasic.gbas";
      func5_Match("ENDIF");
      __debugInfo = "585:GLScriptBasic.gbas";
      return tryClone(1);
      __debugInfo = "552:GLScriptBasic.gbas"
    }else {
      if(global16_CurrentToken_Str == "REPEAT" ? 1 : 0) {
        var local3_Lbl = 0;
        __debugInfo = "587:GLScriptBasic.gbas";
        func8_GetToken();
        __debugInfo = "588:GLScriptBasic.gbas";
        local3_Lbl = func8_GetLabel();
        __debugInfo = "589:GLScriptBasic.gbas";
        func10_AddUnknown("lbl " + CAST2STRING(local3_Lbl));
        __debugInfo = "590:GLScriptBasic.gbas";
        func5_Block(0);
        __debugInfo = "591:GLScriptBasic.gbas";
        func5_Match("UNTIL");
        __debugInfo = "592:GLScriptBasic.gbas";
        func10_Expression();
        __debugInfo = "593:GLScriptBasic.gbas";
        func10_AddUnknown("check " + CAST2STRING(local3_Lbl));
        __debugInfo = "587:GLScriptBasic.gbas"
      }else {
        if(global16_CurrentToken_Str == "WHILE" ? 1 : 0) {
          var local3_Lbl = 0, local4_Lbl2 = 0;
          __debugInfo = "595:GLScriptBasic.gbas";
          func8_GetToken();
          __debugInfo = "596:GLScriptBasic.gbas";
          local3_Lbl = func8_GetLabel();
          __debugInfo = "597:GLScriptBasic.gbas";
          local4_Lbl2 = func8_GetLabel();
          __debugInfo = "598:GLScriptBasic.gbas";
          func10_AddUnknown("lbl " + CAST2STRING(local3_Lbl));
          __debugInfo = "599:GLScriptBasic.gbas";
          func10_Expression();
          __debugInfo = "600:GLScriptBasic.gbas";
          func10_AddUnknown("notcheck " + CAST2STRING(local4_Lbl2));
          __debugInfo = "601:GLScriptBasic.gbas";
          func5_Block(0);
          __debugInfo = "602:GLScriptBasic.gbas";
          func10_AddUnknown("jmp " + CAST2STRING(local3_Lbl));
          __debugInfo = "603:GLScriptBasic.gbas";
          func10_AddUnknown("lbl " + CAST2STRING(local4_Lbl2));
          __debugInfo = "604:GLScriptBasic.gbas";
          func5_Match("WEND");
          __debugInfo = "605:GLScriptBasic.gbas";
          return tryClone(1);
          __debugInfo = "595:GLScriptBasic.gbas"
        }else {
          if(global16_CurrentToken_Str == "FOR" ? 1 : 0) {
            var local1_i = 0, local3_Lbl = 0, local4_Lbl2 = 0, local3_Var = new type4_TVar, local3_Pos = 0, local6_GoStep = 0;
            __debugInfo = "608:GLScriptBasic.gbas";
            func8_GetToken();
            __debugInfo = "610:GLScriptBasic.gbas";
            local3_Lbl = CAST2FLOAT(func8_GetLabel());
            __debugInfo = "611:GLScriptBasic.gbas";
            local4_Lbl2 = CAST2FLOAT(func8_GetLabel());
            __debugInfo = "614:GLScriptBasic.gbas";
            local3_Var = func11_GetVariable().clone();
            __debugInfo = "615:GLScriptBasic.gbas";
            func5_Match("TO");
            __debugInfo = "616:GLScriptBasic.gbas";
            local3_Pos = CAST2FLOAT(global16_CurrentToken_Str);
            __debugInfo = "617:GLScriptBasic.gbas";
            local6_GoStep = 1;
            __debugInfo = "618:GLScriptBasic.gbas";
            func8_GetToken();
            __debugInfo = "624:GLScriptBasic.gbas";
            if(global16_CurrentToken_Str == "STEP" ? 1 : 0) {
              __debugInfo = "620:GLScriptBasic.gbas";
              func5_Match("STEP");
              __debugInfo = "621:GLScriptBasic.gbas";
              local6_GoStep = CAST2FLOAT(global16_CurrentToken_Str);
              __debugInfo = "622:GLScriptBasic.gbas";
              func8_GetToken();
              __debugInfo = "620:GLScriptBasic.gbas"
            }
            __debugInfo = "624:GLScriptBasic.gbas";
            func10_AddUnknown("lbl " + CAST2STRING(local3_Lbl));
            __debugInfo = "625:GLScriptBasic.gbas";
            func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local3_Var)));
            __debugInfo = "626:GLScriptBasic.gbas";
            func10_AddUnknown("pushvar");
            __debugInfo = "627:GLScriptBasic.gbas";
            func10_AddUnknown("pushnum " + CAST2STRING(local3_Pos));
            __debugInfo = "635:GLScriptBasic.gbas";
            if(local6_GoStep > 0 ? 1 : 0) {
              __debugInfo = "629:GLScriptBasic.gbas";
              func10_AddUnknown("greater");
              __debugInfo = "629:GLScriptBasic.gbas"
            }else {
              if(local6_GoStep < 0 ? 1 : 0) {
                __debugInfo = "631:GLScriptBasic.gbas";
                func10_AddUnknown("less");
                __debugInfo = "631:GLScriptBasic.gbas"
              }else {
                __debugInfo = "633:GLScriptBasic.gbas";
                func5_Error("Step must be >0 or <0");
                __debugInfo = "633:GLScriptBasic.gbas"
              }
            }
            __debugInfo = "635:GLScriptBasic.gbas";
            func10_AddUnknown("check " + CAST2STRING(local4_Lbl2));
            __debugInfo = "636:GLScriptBasic.gbas";
            func5_Block(0);
            __debugInfo = "637:GLScriptBasic.gbas";
            func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local3_Var)));
            __debugInfo = "638:GLScriptBasic.gbas";
            func10_AddUnknown("pushvar");
            __debugInfo = "639:GLScriptBasic.gbas";
            func10_AddUnknown("pushnum " + CAST2STRING(local6_GoStep));
            __debugInfo = "640:GLScriptBasic.gbas";
            func10_AddUnknown("add");
            __debugInfo = "641:GLScriptBasic.gbas";
            func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local3_Var)));
            __debugInfo = "642:GLScriptBasic.gbas";
            func10_AddUnknown("set");
            __debugInfo = "643:GLScriptBasic.gbas";
            func10_AddUnknown("jmp " + CAST2STRING(local3_Lbl));
            __debugInfo = "644:GLScriptBasic.gbas";
            func10_AddUnknown("lbl " + CAST2STRING(local4_Lbl2));
            __debugInfo = "646:GLScriptBasic.gbas";
            func5_Match("NEXT");
            __debugInfo = "647:GLScriptBasic.gbas";
            return tryClone(1);
            __debugInfo = "608:GLScriptBasic.gbas"
          }else {
            if((global16_CurrentToken_Str == "LOCAL" ? 1 : 0) || (global16_CurrentToken_Str == "GLOBAL" ? 1 : 0) ? 1 : 0) {
              var local7_Visible = 0, local5_Array = 0;
              __debugInfo = "649:GLScriptBasic.gbas";
              local5_Array = 0;
              __debugInfo = "655:GLScriptBasic.gbas";
              if(global16_CurrentToken_Str == "LOCAL" ? 1 : 0) {
                __debugInfo = "651:GLScriptBasic.gbas";
                local7_Visible = 0;
                __debugInfo = "651:GLScriptBasic.gbas"
              }else {
                __debugInfo = "653:GLScriptBasic.gbas";
                local7_Visible = 1;
                __debugInfo = "653:GLScriptBasic.gbas"
              }
              __debugInfo = "680:GLScriptBasic.gbas";
              do {
                var local8_Name_Str = "", local3_Var = new type4_TVar;
                __debugInfo = "656:GLScriptBasic.gbas";
                func8_GetToken();
                __debugInfo = "657:GLScriptBasic.gbas";
                local8_Name_Str = global16_CurrentToken_Str;
                __debugInfo = "659:GLScriptBasic.gbas";
                func8_GetToken();
                __debugInfo = "665:GLScriptBasic.gbas";
                if(global16_CurrentToken_Str == "[" ? 1 : 0) {
                  __debugInfo = "661:GLScriptBasic.gbas";
                  func5_Match("[");
                  __debugInfo = "662:GLScriptBasic.gbas";
                  func5_Match("]");
                  __debugInfo = "663:GLScriptBasic.gbas";
                  local5_Array = 1;
                  __debugInfo = "661:GLScriptBasic.gbas"
                }
                __debugInfo = "665:GLScriptBasic.gbas";
                local3_Var = func16_RegisterVariable(local8_Name_Str, CAST2INT(local7_Visible), CAST2INT(local5_Array)).clone();
                __debugInfo = "676:GLScriptBasic.gbas";
                if((global16_CurrentToken_Str == "=" ? 1 : 0) && (CAST2FLOAT(local3_Var.attr7_IsArray) == 0 ? 1 : 0) ? 1 : 0) {
                  __debugInfo = "667:GLScriptBasic.gbas";
                  func8_GetToken();
                  __debugInfo = "668:GLScriptBasic.gbas";
                  func10_Expression();
                  __debugInfo = "667:GLScriptBasic.gbas"
                }else {
                  if(CAST2FLOAT(local3_Var.attr7_IsArray) == 0 ? 1 : 0) {
                    __debugInfo = "675:GLScriptBasic.gbas";
                    if(local3_Var.attr3_Typ == 0 ? 1 : 0) {
                      __debugInfo = "671:GLScriptBasic.gbas";
                      func10_AddUnknown("pushnum 0");
                      __debugInfo = "671:GLScriptBasic.gbas"
                    }else {
                      __debugInfo = "673:GLScriptBasic.gbas";
                      func10_AddUnknown("pushstr " + CHR_Str(34) + CHR_Str(34));
                      __debugInfo = "673:GLScriptBasic.gbas"
                    }
                    __debugInfo = "675:GLScriptBasic.gbas"
                  }
                }
                __debugInfo = "680:GLScriptBasic.gbas";
                if(CAST2FLOAT(local3_Var.attr7_IsArray) == 0 ? 1 : 0) {
                  __debugInfo = "677:GLScriptBasic.gbas";
                  func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local3_Var)));
                  __debugInfo = "678:GLScriptBasic.gbas";
                  func10_AddUnknown("set");
                  __debugInfo = "677:GLScriptBasic.gbas"
                }
                __debugInfo = "656:GLScriptBasic.gbas"
              }while(!CAST2FLOAT(global16_CurrentToken_Str != "," ? 1 : 0));
              __debugInfo = "681:GLScriptBasic.gbas";
              return tryClone(1);
              __debugInfo = "649:GLScriptBasic.gbas"
            }else {
              if((global16_CurrentToken_Str == "DIM" ? 1 : 0) || (global16_CurrentToken_Str == "REDIM" ? 1 : 0) ? 1 : 0) {
                var local5_IsDim = 0, local4_Vari = new type4_TVar, local8_DimCount = 0;
                __debugInfo = "683:GLScriptBasic.gbas";
                local5_IsDim = 1;
                __debugInfo = "684:GLScriptBasic.gbas";
                if(global16_CurrentToken_Str == "REDIM" ? 1 : 0) {
                  __debugInfo = "684:GLScriptBasic.gbas";
                  local5_IsDim = 0;
                  __debugInfo = "684:GLScriptBasic.gbas"
                }
                __debugInfo = "685:GLScriptBasic.gbas";
                func8_GetToken();
                __debugInfo = "693:GLScriptBasic.gbas";
                var forEachSaver2040 = global3_Var;
                for(var forEachCounter2040 = 0;forEachCounter2040 < forEachSaver2040.values.length;forEachCounter2040++) {
                  var local1_V = forEachSaver2040.values[forEachCounter2040];
                  __debugInfo = "692:GLScriptBasic.gbas";
                  if((local1_V.attr8_Name_Str == global16_CurrentToken_Str ? 1 : 0) && local1_V.attr7_IsArray ? 1 : 0) {
                    __debugInfo = "689:GLScriptBasic.gbas";
                    local4_Vari = local1_V.clone();
                    __debugInfo = "691:GLScriptBasic.gbas";
                    break;
                    __debugInfo = "689:GLScriptBasic.gbas"
                  }
                  __debugInfo = "692:GLScriptBasic.gbas";
                  forEachSaver2040.values[forEachCounter2040] = local1_V
                }
                __debugInfo = "693:GLScriptBasic.gbas";
                func8_GetToken();
                __debugInfo = "694:GLScriptBasic.gbas";
                local8_DimCount = CAST2FLOAT(-1);
                __debugInfo = "700:GLScriptBasic.gbas";
                do {
                  __debugInfo = "696:GLScriptBasic.gbas";
                  func5_Match("[");
                  __debugInfo = "697:GLScriptBasic.gbas";
                  func10_Expression();
                  __debugInfo = "698:GLScriptBasic.gbas";
                  func5_Match("]");
                  __debugInfo = "699:GLScriptBasic.gbas";
                  local8_DimCount = local8_DimCount + 1;
                  __debugInfo = "696:GLScriptBasic.gbas"
                }while(!CAST2FLOAT(global16_CurrentToken_Str != "[" ? 1 : 0));
                __debugInfo = "701:GLScriptBasic.gbas";
                func6_Output(".");
                __debugInfo = "702:GLScriptBasic.gbas";
                func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local4_Vari)));
                __debugInfo = "703:GLScriptBasic.gbas";
                func10_AddUnknown("pusharray");
                __debugInfo = "709:GLScriptBasic.gbas";
                if(local5_IsDim) {
                  __debugInfo = "705:GLScriptBasic.gbas";
                  func10_AddUnknown("dimarray " + CAST2STRING(local8_DimCount));
                  __debugInfo = "705:GLScriptBasic.gbas"
                }else {
                  __debugInfo = "707:GLScriptBasic.gbas";
                  func10_AddUnknown("redimarray " + CAST2STRING(local8_DimCount));
                  __debugInfo = "707:GLScriptBasic.gbas"
                }
                __debugInfo = "709:GLScriptBasic.gbas";
                return tryClone(1);
                __debugInfo = "683:GLScriptBasic.gbas"
              }else {
                if(global16_CurrentToken_Str == "SELECT" ? 1 : 0) {
                  var local9_TmpOp_Str = "", local6_Op_Str = "", local3_lbl = 0;
                  __debugInfo = "711:GLScriptBasic.gbas";
                  func8_GetToken();
                  __debugInfo = "712:GLScriptBasic.gbas";
                  local9_TmpOp_Str = global10_OpCode_Str;
                  __debugInfo = "713:GLScriptBasic.gbas";
                  global10_OpCode_Str = "";
                  __debugInfo = "714:GLScriptBasic.gbas";
                  func10_Expression();
                  __debugInfo = "715:GLScriptBasic.gbas";
                  local6_Op_Str = global10_OpCode_Str;
                  __debugInfo = "716:GLScriptBasic.gbas";
                  global10_OpCode_Str = local9_TmpOp_Str;
                  __debugInfo = "717:GLScriptBasic.gbas";
                  func5_Match("\n");
                  __debugInfo = "718:GLScriptBasic.gbas";
                  local3_lbl = CAST2FLOAT(func8_GetLabel());
                  __debugInfo = "755:GLScriptBasic.gbas";
                  while(global16_CurrentToken_Str == "CASE" ? 1 : 0) {
                    var local7_Sym_Str = "", local4_lbl2 = 0;
                    __debugInfo = "720:GLScriptBasic.gbas";
                    local7_Sym_Str = "cmp";
                    __debugInfo = "721:GLScriptBasic.gbas";
                    local4_lbl2 = CAST2FLOAT(func8_GetLabel());
                    __debugInfo = "722:GLScriptBasic.gbas";
                    func8_GetToken();
                    __debugInfo = "736:GLScriptBasic.gbas";
                    if(global16_CurrentToken_Str == "<" ? 1 : 0) {
                      __debugInfo = "724:GLScriptBasic.gbas";
                      local7_Sym_Str = "less\ninv";
                      __debugInfo = "725:GLScriptBasic.gbas";
                      func8_GetToken();
                      __debugInfo = "724:GLScriptBasic.gbas"
                    }else {
                      if(global16_CurrentToken_Str == ">" ? 1 : 0) {
                        __debugInfo = "727:GLScriptBasic.gbas";
                        local7_Sym_Str = "greater\ninv";
                        __debugInfo = "728:GLScriptBasic.gbas";
                        func8_GetToken();
                        __debugInfo = "727:GLScriptBasic.gbas"
                      }else {
                        if(global16_CurrentToken_Str == "<=" ? 1 : 0) {
                          __debugInfo = "730:GLScriptBasic.gbas";
                          local7_Sym_Str = "lessequ\ninv";
                          __debugInfo = "731:GLScriptBasic.gbas";
                          func8_GetToken();
                          __debugInfo = "730:GLScriptBasic.gbas"
                        }else {
                          if(global16_CurrentToken_Str == ">=" ? 1 : 0) {
                            __debugInfo = "733:GLScriptBasic.gbas";
                            local7_Sym_Str = "greaterequ\ninv";
                            __debugInfo = "734:GLScriptBasic.gbas";
                            func8_GetToken();
                            __debugInfo = "733:GLScriptBasic.gbas"
                          }
                        }
                      }
                    }
                    __debugInfo = "736:GLScriptBasic.gbas";
                    func10_Expression();
                    __debugInfo = "737:GLScriptBasic.gbas";
                    global10_OpCode_Str = global10_OpCode_Str + local6_Op_Str;
                    __debugInfo = "750:GLScriptBasic.gbas";
                    if(global16_CurrentToken_Str == "TO" ? 1 : 0) {
                      __debugInfo = "739:GLScriptBasic.gbas";
                      func10_AddUnknown("greaterequ");
                      __debugInfo = "740:GLScriptBasic.gbas";
                      func10_AddUnknown("check " + CAST2STRING(local4_lbl2));
                      __debugInfo = "741:GLScriptBasic.gbas";
                      func5_Match("TO");
                      __debugInfo = "742:GLScriptBasic.gbas";
                      func10_Expression();
                      __debugInfo = "743:GLScriptBasic.gbas";
                      global10_OpCode_Str = global10_OpCode_Str + local6_Op_Str;
                      __debugInfo = "744:GLScriptBasic.gbas";
                      func10_AddUnknown("lessequ");
                      __debugInfo = "745:GLScriptBasic.gbas";
                      func10_AddUnknown("check " + CAST2STRING(local4_lbl2));
                      __debugInfo = "739:GLScriptBasic.gbas"
                    }else {
                      __debugInfo = "747:GLScriptBasic.gbas";
                      func10_AddUnknown(local7_Sym_Str);
                      __debugInfo = "748:GLScriptBasic.gbas";
                      func10_AddUnknown("notcheck " + CAST2STRING(local4_lbl2));
                      __debugInfo = "747:GLScriptBasic.gbas"
                    }
                    __debugInfo = "750:GLScriptBasic.gbas";
                    func5_Match("\n");
                    __debugInfo = "751:GLScriptBasic.gbas";
                    func5_Block(0);
                    __debugInfo = "752:GLScriptBasic.gbas";
                    func10_AddUnknown("jmp " + CAST2STRING(local3_lbl));
                    __debugInfo = "753:GLScriptBasic.gbas";
                    func10_AddUnknown("lbl " + CAST2STRING(local4_lbl2));
                    __debugInfo = "720:GLScriptBasic.gbas"
                  }
                  __debugInfo = "759:GLScriptBasic.gbas";
                  if(global16_CurrentToken_Str == "DEFAULT" ? 1 : 0) {
                    __debugInfo = "756:GLScriptBasic.gbas";
                    func8_GetToken();
                    __debugInfo = "757:GLScriptBasic.gbas";
                    func5_Block(0);
                    __debugInfo = "756:GLScriptBasic.gbas"
                  }
                  __debugInfo = "759:GLScriptBasic.gbas";
                  func10_AddUnknown("lbl " + CAST2STRING(local3_lbl));
                  __debugInfo = "760:GLScriptBasic.gbas";
                  func5_Match("ENDSELECT");
                  __debugInfo = "761:GLScriptBasic.gbas";
                  return tryClone(1);
                  __debugInfo = "711:GLScriptBasic.gbas"
                }else {
                  if(global16_CurrentToken_Str == "GOSUB" ? 1 : 0) {
                    var local5_UFunc = new type16_TUnknownFunction;
                    __debugInfo = "763:GLScriptBasic.gbas";
                    func8_GetToken();
                    __debugInfo = "765:GLScriptBasic.gbas";
                    local5_UFunc.attr8_Name_Str = global16_CurrentToken_Str;
                    __debugInfo = "766:GLScriptBasic.gbas";
                    local5_UFunc.attr3_Par = 0;
                    __debugInfo = "767:GLScriptBasic.gbas";
                    local5_UFunc.attr4_Line = global11_CurrentLine;
                    __debugInfo = "768:GLScriptBasic.gbas";
                    DIMPUSH(global6_UFuncs, local5_UFunc);
                    __debugInfo = "769:GLScriptBasic.gbas";
                    func10_AddUnknown("call SCRIPT_" + global16_CurrentToken_Str + "@0");
                    __debugInfo = "770:GLScriptBasic.gbas";
                    func10_AddUnknown("pop");
                    __debugInfo = "771:GLScriptBasic.gbas";
                    func8_GetToken();
                    __debugInfo = "772:GLScriptBasic.gbas";
                    return tryClone(1);
                    __debugInfo = "763:GLScriptBasic.gbas"
                  }else {
                    if((global16_CurrentToken_Str == "FUNCTION" ? 1 : 0) || (global16_CurrentToken_Str == "SUB" ? 1 : 0) ? 1 : 0) {
                      var local5_InSub = 0, local8_Name_Str = "", local6_TmpVar = new GLBArray, local10_TmpDec_Str = "", local10_ParamCount = 0, local9_Param_Str = "", local12_OpParamCount = 0, local13_Optionals_Str = new GLBArray, local2_ID = 0, local6_RealID = 0, local3_ID2 = 0, local1_i = 0;
                      __debugInfo = "774:GLScriptBasic.gbas";
                      local5_InSub = 0;
                      __debugInfo = "775:GLScriptBasic.gbas";
                      if(global16_CurrentToken_Str == "SUB" ? 1 : 0) {
                        __debugInfo = "775:GLScriptBasic.gbas";
                        local5_InSub = 1;
                        __debugInfo = "775:GLScriptBasic.gbas"
                      }
                      __debugInfo = "776:GLScriptBasic.gbas";
                      func8_GetToken();
                      __debugInfo = "777:GLScriptBasic.gbas";
                      local8_Name_Str = global16_CurrentToken_Str;
                      __debugInfo = "778:GLScriptBasic.gbas";
                      func8_GetToken();
                      __debugInfo = "779:GLScriptBasic.gbas";
                      func5_Match(":");
                      __debugInfo = "780:GLScriptBasic.gbas";
                      global6_InFunc = 1;
                      __debugInfo = "781:GLScriptBasic.gbas";
                      global12_FuncVarCount = 0;
                      __debugInfo = "784:GLScriptBasic.gbas";
                      local6_TmpVar = global3_Var.clone();
                      __debugInfo = "791:GLScriptBasic.gbas";
                      var forEachSaver2346 = global3_Var;
                      for(var forEachCounter2346 = 0;forEachCounter2346 < forEachSaver2346.values.length;forEachCounter2346++) {
                        var local1_V = forEachSaver2346.values[forEachCounter2346];
                        __debugInfo = "790:GLScriptBasic.gbas";
                        if(local1_V.attr8_IsGlobal) {
                        }else {
                          __debugInfo = "788:GLScriptBasic.gbas";
                          local1_V.attr8_Name_Str = "";
                          __debugInfo = "788:GLScriptBasic.gbas"
                        }
                        __debugInfo = "790:GLScriptBasic.gbas";
                        forEachSaver2346.values[forEachCounter2346] = local1_V
                      }
                      __debugInfo = "791:GLScriptBasic.gbas";
                      local10_TmpDec_Str = global15_Declaration_Str;
                      __debugInfo = "792:GLScriptBasic.gbas";
                      global15_Declaration_Str = "";
                      __debugInfo = "793:GLScriptBasic.gbas";
                      local10_ParamCount = 0;
                      __debugInfo = "795:GLScriptBasic.gbas";
                      local12_OpParamCount = 0;
                      __debugInfo = "797:GLScriptBasic.gbas";
                      global11_FuncVarSize = 0;
                      __debugInfo = "798:GLScriptBasic.gbas";
                      DIM(unref(global3_Par), [-1], new type4_TVar);
                      __debugInfo = "841:GLScriptBasic.gbas";
                      if((global16_CurrentToken_Str != "\n" ? 1 : 0) && (local5_InSub == 0 ? 1 : 0) ? 1 : 0) {
                        var local1_T = 0;
                        __debugInfo = "800:GLScriptBasic.gbas";
                        local1_T = 0;
                        __debugInfo = "837:GLScriptBasic.gbas";
                        do {
                          var local8_Name_Str = "", local7_IsArray = 0, local3_Var = new type4_TVar, local6_TmpPar = new GLBArray;
                          __debugInfo = "802:GLScriptBasic.gbas";
                          if(local1_T) {
                            __debugInfo = "802:GLScriptBasic.gbas";
                            func5_Match(",");
                            __debugInfo = "802:GLScriptBasic.gbas"
                          }
                          __debugInfo = "803:GLScriptBasic.gbas";
                          local1_T = 1;
                          __debugInfo = "804:GLScriptBasic.gbas";
                          local7_IsArray = 0;
                          __debugInfo = "805:GLScriptBasic.gbas";
                          local8_Name_Str = global16_CurrentToken_Str;
                          __debugInfo = "806:GLScriptBasic.gbas";
                          func8_GetToken();
                          __debugInfo = "812:GLScriptBasic.gbas";
                          if(global16_CurrentToken_Str == "[" ? 1 : 0) {
                            __debugInfo = "808:GLScriptBasic.gbas";
                            func5_Match("[");
                            __debugInfo = "809:GLScriptBasic.gbas";
                            func5_Match("]");
                            __debugInfo = "810:GLScriptBasic.gbas";
                            local7_IsArray = 1;
                            __debugInfo = "808:GLScriptBasic.gbas"
                          }
                          __debugInfo = "826:GLScriptBasic.gbas";
                          if(global16_CurrentToken_Str == "=" ? 1 : 0) {
                            var local9_TmpOp_Str = "", local7_Tmp_Str = new GLBArray;
                            __debugInfo = "813:GLScriptBasic.gbas";
                            func5_Match("=");
                            __debugInfo = "814:GLScriptBasic.gbas";
                            local9_TmpOp_Str = global10_OpCode_Str;
                            __debugInfo = "815:GLScriptBasic.gbas";
                            global10_OpCode_Str = "";
                            __debugInfo = "816:GLScriptBasic.gbas";
                            func10_Expression();
                            __debugInfo = "818:GLScriptBasic.gbas";
                            DIMPUSH(local7_Tmp_Str, global10_OpCode_Str);
                            __debugInfo = "822:GLScriptBasic.gbas";
                            var forEachSaver2450 = local13_Optionals_Str;
                            for(var forEachCounter2450 = 0;forEachCounter2450 < forEachSaver2450.values.length;forEachCounter2450++) {
                              var local1_S = forEachSaver2450.values[forEachCounter2450];
                              __debugInfo = "820:GLScriptBasic.gbas";
                              DIMPUSH(local7_Tmp_Str, local1_S);
                              __debugInfo = "820:GLScriptBasic.gbas";
                              forEachSaver2450.values[forEachCounter2450] = local1_S
                            }
                            __debugInfo = "822:GLScriptBasic.gbas";
                            local13_Optionals_Str = local7_Tmp_Str.clone();
                            __debugInfo = "823:GLScriptBasic.gbas";
                            global10_OpCode_Str = local9_TmpOp_Str;
                            __debugInfo = "824:GLScriptBasic.gbas";
                            local12_OpParamCount = local12_OpParamCount + 1;
                            __debugInfo = "813:GLScriptBasic.gbas"
                          }
                          __debugInfo = "827:GLScriptBasic.gbas";
                          local3_Var.attr8_Name_Str = local8_Name_Str;
                          __debugInfo = "828:GLScriptBasic.gbas";
                          local3_Var.attr7_IsArray = CAST2INT(local7_IsArray);
                          __debugInfo = "831:GLScriptBasic.gbas";
                          DIMPUSH(local6_TmpPar, local3_Var);
                          __debugInfo = "835:GLScriptBasic.gbas";
                          var forEachSaver2492 = global3_Par;
                          for(var forEachCounter2492 = 0;forEachCounter2492 < forEachSaver2492.values.length;forEachCounter2492++) {
                            var local1_V = forEachSaver2492.values[forEachCounter2492];
                            __debugInfo = "833:GLScriptBasic.gbas";
                            DIMPUSH(local6_TmpPar, local1_V);
                            __debugInfo = "833:GLScriptBasic.gbas";
                            forEachSaver2492.values[forEachCounter2492] = local1_V
                          }
                          __debugInfo = "835:GLScriptBasic.gbas";
                          global3_Par = local6_TmpPar.clone();
                          __debugInfo = "836:GLScriptBasic.gbas";
                          local10_ParamCount = local10_ParamCount + 1;
                          __debugInfo = "802:GLScriptBasic.gbas"
                        }while(!CAST2FLOAT(global16_CurrentToken_Str != "," ? 1 : 0));
                        __debugInfo = "838:GLScriptBasic.gbas";
                        __debugInfo = "839:GLScriptBasic.gbas";
                        if(global16_CurrentToken_Str != "\n" ? 1 : 0) {
                          __debugInfo = "839:GLScriptBasic.gbas";
                          func8_GetToken();
                          __debugInfo = "839:GLScriptBasic.gbas"
                        }
                        __debugInfo = "800:GLScriptBasic.gbas"
                      }
                      __debugInfo = "842:GLScriptBasic.gbas";
                      local3_ID2 = CAST2FLOAT(func8_GetLabel());
                      __debugInfo = "843:GLScriptBasic.gbas";
                      func10_AddUnknown("jmp " + CAST2STRING(local3_ID2));
                      __debugInfo = "860:GLScriptBasic.gbas";
                      for(local1_i = local12_OpParamCount;forCheck(local1_i, 0, CAST2FLOAT(-1));local1_i += CAST2FLOAT(-1)) {
                        var local3_FID = 0;
                        __debugInfo = "845:GLScriptBasic.gbas";
                        local2_ID = CAST2FLOAT(func8_GetLabel());
                        __debugInfo = "846:GLScriptBasic.gbas";
                        local3_FID = CAST2INT(func14_CreateFunction(local8_Name_Str, CAST2INT(local10_ParamCount - local1_i), 0));
                        __debugInfo = "847:GLScriptBasic.gbas";
                        global5_Funcs.arrAccess(local3_FID).values[tmpPositionCache].attr10_IsUserFunc = 1;
                        __debugInfo = "848:GLScriptBasic.gbas";
                        global5_Funcs.arrAccess(local3_FID).values[tmpPositionCache].attr5_IsSub = CAST2INT(local5_InSub);
                        __debugInfo = "849:GLScriptBasic.gbas";
                        global5_Funcs.arrAccess(local3_FID).values[tmpPositionCache].attr2_id = CAST2INT(local2_ID);
                        __debugInfo = "859:GLScriptBasic.gbas";
                        if(local1_i > 0 ? 1 : 0) {
                          __debugInfo = "852:GLScriptBasic.gbas";
                          global5_Funcs.arrAccess(local3_FID).values[tmpPositionCache].attr18_IsOptionalFunction = 1;
                          __debugInfo = "853:GLScriptBasic.gbas";
                          global5_Funcs.arrAccess(local3_FID).values[tmpPositionCache].attr10_OpParCount = local1_i;
                          __debugInfo = "854:GLScriptBasic.gbas";
                          global5_Funcs.arrAccess(local3_FID).values[tmpPositionCache].attr8_ParCount = CAST2INT(local10_ParamCount - local1_i);
                          __debugInfo = "855:GLScriptBasic.gbas";
                          global5_Funcs.arrAccess(local3_FID).values[tmpPositionCache].attr13_Optionals_Str = local13_Optionals_Str.clone();
                          __debugInfo = "852:GLScriptBasic.gbas"
                        }else {
                          __debugInfo = "857:GLScriptBasic.gbas";
                          local6_RealID = local2_ID;
                          __debugInfo = "857:GLScriptBasic.gbas"
                        }
                        __debugInfo = "845:GLScriptBasic.gbas"
                      }
                      __debugInfo = "860:GLScriptBasic.gbas";
                      local2_ID = local6_RealID;
                      __debugInfo = "861:GLScriptBasic.gbas";
                      func10_AddUnknown("lbl " + CAST2STRING(local2_ID));
                      __debugInfo = "862:GLScriptBasic.gbas";
                      func5_Block(1);
                      __debugInfo = "863:GLScriptBasic.gbas";
                      global10_OpCode_Str = global15_Declaration_Str + global10_OpCode_Str;
                      __debugInfo = "864:GLScriptBasic.gbas";
                      global15_Declaration_Str = local10_TmpDec_Str;
                      __debugInfo = "865:GLScriptBasic.gbas";
                      global3_Var = local6_TmpVar.clone();
                      __debugInfo = "866:GLScriptBasic.gbas";
                      func10_AddUnknown("pushnum 0");
                      __debugInfo = "867:GLScriptBasic.gbas";
                      func10_AddUnknown("ret " + CAST2STRING(global12_FuncVarCount));
                      __debugInfo = "868:GLScriptBasic.gbas";
                      global12_FuncVarCount = 0;
                      __debugInfo = "869:GLScriptBasic.gbas";
                      func10_AddUnknown("lbl " + CAST2STRING(local3_ID2));
                      __debugInfo = "870:GLScriptBasic.gbas";
                      global6_InFunc = 0;
                      __debugInfo = "871:GLScriptBasic.gbas";
                      global11_FuncVarSize = 0;
                      __debugInfo = "877:GLScriptBasic.gbas";
                      if(local5_InSub) {
                        __debugInfo = "873:GLScriptBasic.gbas";
                        func5_Match("ENDSUB");
                        __debugInfo = "873:GLScriptBasic.gbas"
                      }else {
                        __debugInfo = "875:GLScriptBasic.gbas";
                        func5_Match("ENDFUNCTION");
                        __debugInfo = "875:GLScriptBasic.gbas"
                      }
                      __debugInfo = "877:GLScriptBasic.gbas";
                      return tryClone(1);
                      __debugInfo = "774:GLScriptBasic.gbas"
                    }else {
                      if(global16_CurrentToken_Str == "RETURN" ? 1 : 0) {
                        __debugInfo = "891:GLScriptBasic.gbas";
                        if(CAST2FLOAT(global6_InFunc) == 0 ? 1 : 0) {
                          __debugInfo = "880:GLScriptBasic.gbas";
                          func5_Error("Cannot call return in main program");
                          __debugInfo = "880:GLScriptBasic.gbas"
                        }else {
                          __debugInfo = "882:GLScriptBasic.gbas";
                          func8_GetToken();
                          __debugInfo = "888:GLScriptBasic.gbas";
                          if(global16_CurrentToken_Str == "\n" ? 1 : 0) {
                            __debugInfo = "884:GLScriptBasic.gbas";
                            func10_AddUnknown("pushnum 0");
                            __debugInfo = "884:GLScriptBasic.gbas"
                          }else {
                            __debugInfo = "886:GLScriptBasic.gbas";
                            func10_Expression();
                            __debugInfo = "886:GLScriptBasic.gbas"
                          }
                          __debugInfo = "888:GLScriptBasic.gbas";
                          func10_AddUnknown("ret " + CAST2STRING(global12_FuncVarCount));
                          __debugInfo = "889:GLScriptBasic.gbas";
                          global12_FuncVarCount = 0;
                          __debugInfo = "882:GLScriptBasic.gbas"
                        }
                        __debugInfo = "891:GLScriptBasic.gbas";
                        return tryClone(1);
                        __debugInfo = "891:GLScriptBasic.gbas"
                      }else {
                        if(global16_CurrentToken_Str == "INLINE" ? 1 : 0) {
                          __debugInfo = "893:GLScriptBasic.gbas";
                          func8_GetToken();
                          __debugInfo = "894:GLScriptBasic.gbas";
                          func3_Add();
                          __debugInfo = "895:GLScriptBasic.gbas";
                          func8_GetToken();
                          __debugInfo = "896:GLScriptBasic.gbas";
                          return tryClone(1);
                          __debugInfo = "893:GLScriptBasic.gbas"
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    __debugInfo = "898:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "900:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "898:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func4_Funk() {
  stackPush("function: Funk", __debugInfo);
  try {
    var local8_Name_Str = "";
    __debugInfo = "902:GLScriptBasic.gbas";
    local8_Name_Str = global16_CurrentToken_Str;
    __debugInfo = "903:GLScriptBasic.gbas";
    if(local8_Name_Str == "___ENDFILE" ? 1 : 0) {
      __debugInfo = "903:GLScriptBasic.gbas";
      return 0;
      __debugInfo = "903:GLScriptBasic.gbas"
    }
    __debugInfo = "904:GLScriptBasic.gbas";
    func8_GetToken();
    __debugInfo = "905:GLScriptBasic.gbas";
    if(local8_Name_Str == "___ENDFILE" ? 1 : 0) {
      __debugInfo = "905:GLScriptBasic.gbas";
      return 0;
      __debugInfo = "905:GLScriptBasic.gbas"
    }
    __debugInfo = "927:GLScriptBasic.gbas";
    if((global16_CurrentToken_Str == "(" ? 1 : 0) && (local8_Name_Str != "" ? 1 : 0) ? 1 : 0) {
      var local1_b = 0, local5_Count = 0, local5_UFunc = new type16_TUnknownFunction;
      __debugInfo = "907:GLScriptBasic.gbas";
      local1_b = 1;
      __debugInfo = "916:GLScriptBasic.gbas";
      while(CAST2FLOAT(global16_CurrentToken_Str == "," ? 1 : 0) || local1_b ? 1 : 0) {
        __debugInfo = "910:GLScriptBasic.gbas";
        func8_GetToken();
        __debugInfo = "911:GLScriptBasic.gbas";
        if(global16_CurrentToken_Str == ")" ? 1 : 0) {
          __debugInfo = "911:GLScriptBasic.gbas";
          break;
          __debugInfo = "911:GLScriptBasic.gbas"
        }
        __debugInfo = "912:GLScriptBasic.gbas";
        func10_Expression();
        __debugInfo = "913:GLScriptBasic.gbas";
        local1_b = 0;
        __debugInfo = "914:GLScriptBasic.gbas";
        local5_Count = local5_Count + 1;
        __debugInfo = "910:GLScriptBasic.gbas"
      }
      __debugInfo = "916:GLScriptBasic.gbas";
      func5_Match(")");
      __debugInfo = "917:GLScriptBasic.gbas";
      func10_AddUnknown("call SCRIPT_" + local8_Name_Str + "@" + CAST2STRING(local5_Count));
      __debugInfo = "919:GLScriptBasic.gbas";
      local5_UFunc.attr8_Name_Str = local8_Name_Str;
      __debugInfo = "920:GLScriptBasic.gbas";
      local5_UFunc.attr3_Par = CAST2INT(local5_Count);
      __debugInfo = "921:GLScriptBasic.gbas";
      local5_UFunc.attr4_Line = global11_CurrentLine;
      __debugInfo = "922:GLScriptBasic.gbas";
      DIMPUSH(global6_UFuncs, local5_UFunc);
      __debugInfo = "923:GLScriptBasic.gbas";
      return tryClone(1);
      __debugInfo = "907:GLScriptBasic.gbas"
    }else {
      __debugInfo = "925:GLScriptBasic.gbas";
      func10_LooseToken();
      __debugInfo = "925:GLScriptBasic.gbas"
    }
    __debugInfo = "927:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "929:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "902:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func7_KeyFunk() {
  stackPush("function: KeyFunk", __debugInfo);
  try {
    __debugInfo = "945:GLScriptBasic.gbas";
    var forEachSaver2898 = global5_Funcs;
    for(var forEachCounter2898 = 0;forEachCounter2898 < forEachSaver2898.values.length;forEachCounter2898++) {
      var local4_Func = forEachSaver2898.values[forEachCounter2898];
      __debugInfo = "944:GLScriptBasic.gbas";
      if(local4_Func.attr5_isKey) {
        __debugInfo = "943:GLScriptBasic.gbas";
        if(global16_CurrentToken_Str == local4_Func.attr8_Name_Str ? 1 : 0) {
          var local1_i = 0;
          __debugInfo = "934:GLScriptBasic.gbas";
          func8_GetToken();
          __debugInfo = "941:GLScriptBasic.gbas";
          for(local1_i = 0;forCheck(local1_i, CAST2FLOAT(local4_Func.attr8_ParCount - 1), 1);local1_i += 1) {
            __debugInfo = "936:GLScriptBasic.gbas";
            func10_Expression();
            __debugInfo = "940:GLScriptBasic.gbas";
            if(local1_i < CAST2FLOAT(local4_Func.attr8_ParCount - 1) ? 1 : 0) {
              __debugInfo = "938:GLScriptBasic.gbas";
              func5_Match(",");
              __debugInfo = "938:GLScriptBasic.gbas"
            }
            __debugInfo = "936:GLScriptBasic.gbas"
          }
          __debugInfo = "941:GLScriptBasic.gbas";
          func10_AddUnknown("call SCRIPT_" + local4_Func.attr8_Name_Str);
          __debugInfo = "934:GLScriptBasic.gbas"
        }
        __debugInfo = "943:GLScriptBasic.gbas"
      }
      __debugInfo = "944:GLScriptBasic.gbas";
      forEachSaver2898.values[forEachCounter2898] = local4_Func
    }
    __debugInfo = "946:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "945:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_Variable(param3_Set) {
  stackPush("function: Variable", __debugInfo);
  try {
    param3_Set = unref(param3_Set);
    __debugInfo = "980:GLScriptBasic.gbas";
    var forEachSaver2998 = global3_Var;
    for(var forEachCounter2998 = 0;forEachCounter2998 < forEachSaver2998.values.length;forEachCounter2998++) {
      var local4_Vari = forEachSaver2998.values[forEachCounter2998];
      __debugInfo = "979:GLScriptBasic.gbas";
      if(local4_Vari.attr8_Name_Str == global16_CurrentToken_Str ? 1 : 0) {
        __debugInfo = "950:GLScriptBasic.gbas";
        func8_GetToken();
        __debugInfo = "968:GLScriptBasic.gbas";
        if(local4_Vari.attr7_IsArray) {
          __debugInfo = "966:GLScriptBasic.gbas";
          do {
            __debugInfo = "953:GLScriptBasic.gbas";
            func5_Match("[");
            __debugInfo = "966:GLScriptBasic.gbas";
            if(global16_CurrentToken_Str != "]" ? 1 : 0) {
              __debugInfo = "955:GLScriptBasic.gbas";
              func10_Expression();
              __debugInfo = "956:GLScriptBasic.gbas";
              func5_Match("]");
              __debugInfo = "957:GLScriptBasic.gbas";
              func10_AddUnknown("");
              __debugInfo = "955:GLScriptBasic.gbas"
            }else {
              __debugInfo = "960:GLScriptBasic.gbas";
              func5_Match("]");
              __debugInfo = "961:GLScriptBasic.gbas";
              func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local4_Vari)));
              __debugInfo = "962:GLScriptBasic.gbas";
              func10_AddUnknown("getarray");
              __debugInfo = "963:GLScriptBasic.gbas";
              if((global16_CurrentToken_Str != "=" ? 1 : 0) || (param3_Set == 0 ? 1 : 0) ? 1 : 0) {
                __debugInfo = "963:GLScriptBasic.gbas";
                return tryClone(1);
                __debugInfo = "963:GLScriptBasic.gbas"
              }
              __debugInfo = "965:GLScriptBasic.gbas";
              break;
              __debugInfo = "960:GLScriptBasic.gbas"
            }
            __debugInfo = "953:GLScriptBasic.gbas"
          }while(!CAST2FLOAT(global16_CurrentToken_Str != "[" ? 1 : 0));
          __debugInfo = "966:GLScriptBasic.gbas"
        }
        __debugInfo = "977:GLScriptBasic.gbas";
        if(CAST2FLOAT(global16_CurrentToken_Str == "=" ? 1 : 0) && param3_Set ? 1 : 0) {
          __debugInfo = "969:GLScriptBasic.gbas";
          func8_GetToken();
          __debugInfo = "970:GLScriptBasic.gbas";
          func10_Expression();
          __debugInfo = "971:GLScriptBasic.gbas";
          func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local4_Vari)));
          __debugInfo = "972:GLScriptBasic.gbas";
          func10_AddUnknown("set");
          __debugInfo = "969:GLScriptBasic.gbas"
        }else {
          __debugInfo = "974:GLScriptBasic.gbas";
          func10_AddUnknown("ref " + CAST2STRING(func8_GetVarID(local4_Vari)));
          __debugInfo = "975:GLScriptBasic.gbas";
          func10_AddUnknown("pushvar");
          __debugInfo = "974:GLScriptBasic.gbas"
        }
        __debugInfo = "977:GLScriptBasic.gbas";
        return tryClone(1);
        __debugInfo = "950:GLScriptBasic.gbas"
      }
      __debugInfo = "979:GLScriptBasic.gbas";
      forEachSaver2998.values[forEachCounter2998] = local4_Vari
    }
    __debugInfo = "980:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "982:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "980:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func11_GetVariable() {
  stackPush("function: GetVariable", __debugInfo);
  try {
    __debugInfo = "991:GLScriptBasic.gbas";
    var forEachSaver3021 = global3_Var;
    for(var forEachCounter3021 = 0;forEachCounter3021 < forEachSaver3021.values.length;forEachCounter3021++) {
      var local4_Vari = forEachSaver3021.values[forEachCounter3021];
      __debugInfo = "990:GLScriptBasic.gbas";
      if(local4_Vari.attr8_Name_Str == global16_CurrentToken_Str ? 1 : 0) {
        __debugInfo = "987:GLScriptBasic.gbas";
        func8_Variable(1);
        __debugInfo = "988:GLScriptBasic.gbas";
        return tryClone(unref(local4_Vari));
        __debugInfo = "987:GLScriptBasic.gbas"
      }
      __debugInfo = "990:GLScriptBasic.gbas";
      forEachSaver3021.values[forEachCounter3021] = local4_Vari
    }
    __debugInfo = "991:GLScriptBasic.gbas";
    func5_Error("Unknown Variable");
    __debugInfo = "993:GLScriptBasic.gbas";
    return tryClone(unref(new type4_TVar));
    __debugInfo = "991:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func16_RegisterVariable(param8_Name_Str, param7_Visible, param5_Array) {
  stackPush("function: RegisterVariable", __debugInfo);
  try {
    param8_Name_Str = unref(param8_Name_Str);
    param7_Visible = unref(param7_Visible);
    param5_Array = unref(param5_Array);
    var local4_Vari = new type4_TVar;
    __debugInfo = "1000:GLScriptBasic.gbas";
    if(param8_Name_Str == "" ? 1 : 0) {
      __debugInfo = "997:GLScriptBasic.gbas";
      func5_Error("Cannot register an empty variable");
      __debugInfo = "998:GLScriptBasic.gbas";
      return tryClone(unref(local4_Vari));
      __debugInfo = "997:GLScriptBasic.gbas"
    }
    __debugInfo = "1015:GLScriptBasic.gbas";
    if((LEN(global3_Var) > 0 ? 1 : 0) && (CAST2FLOAT(param7_Visible) == 0 ? 1 : 0) ? 1 : 0) {
      var local6_TmpVar = new type4_TVar;
      __debugInfo = "1012:GLScriptBasic.gbas";
      var forEachSaver3090 = global3_Var;
      for(var forEachCounter3090 = 0;forEachCounter3090 < forEachSaver3090.values.length;forEachCounter3090++) {
        var local1_V = forEachSaver3090.values[forEachCounter3090];
        __debugInfo = "1007:GLScriptBasic.gbas";
        if(local1_V.attr8_Name_Str == "___FUNCBLOCKVAR___" ? 1 : 0) {
          __debugInfo = "1005:GLScriptBasic.gbas";
          local6_TmpVar.attr2_id = 0;
          __debugInfo = "1005:GLScriptBasic.gbas"
        }
        __debugInfo = "1011:GLScriptBasic.gbas";
        if(CAST2FLOAT(local1_V.attr8_IsGlobal) == 0 ? 1 : 0) {
          __debugInfo = "1008:GLScriptBasic.gbas";
          if(func8_GetVarID(local1_V) < func8_GetVarID(local6_TmpVar) ? 1 : 0) {
            __debugInfo = "1008:GLScriptBasic.gbas";
            local6_TmpVar = local1_V.clone();
            __debugInfo = "1008:GLScriptBasic.gbas"
          }
          __debugInfo = "1008:GLScriptBasic.gbas"
        }
        __debugInfo = "1007:GLScriptBasic.gbas";
        forEachSaver3090.values[forEachCounter3090] = local1_V
      }
      __debugInfo = "1012:GLScriptBasic.gbas";
      local4_Vari.attr2_id = local6_TmpVar.attr2_id + 1;
      __debugInfo = "1012:GLScriptBasic.gbas"
    }
    __debugInfo = "1015:GLScriptBasic.gbas";
    if(global6_InFunc) {
      __debugInfo = "1015:GLScriptBasic.gbas";
      global12_FuncVarCount = global12_FuncVarCount + 1;
      __debugInfo = "1015:GLScriptBasic.gbas"
    }
    __debugInfo = "1016:GLScriptBasic.gbas";
    local4_Vari.attr8_Name_Str = param8_Name_Str;
    __debugInfo = "1017:GLScriptBasic.gbas";
    local4_Vari.attr7_IsArray = param5_Array;
    __debugInfo = "1018:GLScriptBasic.gbas";
    local4_Vari.attr8_IsGlobal = param7_Visible;
    __debugInfo = "1019:GLScriptBasic.gbas";
    var local16___SelectHelper2_ = "";
    __debugInfo = "1019:GLScriptBasic.gbas";
    local16___SelectHelper2_ = MID_Str(unref(local4_Vari.attr8_Name_Str), LEN(local4_Vari.attr8_Name_Str) - 1, 1);
    __debugInfo = "1028:GLScriptBasic.gbas";
    if(local16___SelectHelper2_ == "$" ? 1 : 0) {
      __debugInfo = "1021:GLScriptBasic.gbas";
      local4_Vari.attr3_Typ = 1;
      __debugInfo = "1021:GLScriptBasic.gbas"
    }else {
      if(local16___SelectHelper2_ == "#" ? 1 : 0) {
        __debugInfo = "1023:GLScriptBasic.gbas";
        local4_Vari.attr3_Typ = 0;
        __debugInfo = "1024:GLScriptBasic.gbas";
        local4_Vari.attr8_Name_Str = MID_Str(unref(local4_Vari.attr8_Name_Str), 0, LEN(local4_Vari.attr8_Name_Str) - 1);
        __debugInfo = "1023:GLScriptBasic.gbas"
      }else {
        __debugInfo = "1026:GLScriptBasic.gbas";
        local4_Vari.attr3_Typ = 0;
        __debugInfo = "1026:GLScriptBasic.gbas"
      }
    }
    __debugInfo = "1019:GLScriptBasic.gbas";
    __debugInfo = "1038:GLScriptBasic.gbas";
    if(CAST2FLOAT(param7_Visible) == 0 ? 1 : 0) {
      __debugInfo = "1030:GLScriptBasic.gbas";
      DIMPUSH(global3_Var, local4_Vari);
      __debugInfo = "1031:GLScriptBasic.gbas";
      global15_Declaration_Str = "var " + CAST2STRING(local4_Vari.attr3_Typ) + "//" + local4_Vari.attr8_Name_Str + "\n" + global15_Declaration_Str;
      __debugInfo = "1030:GLScriptBasic.gbas"
    }else {
      __debugInfo = "1033:GLScriptBasic.gbas";
      local4_Vari.attr2_id = CAST2FLOAT(global8_GlbVarID);
      __debugInfo = "1034:GLScriptBasic.gbas";
      global8_GlbVarID = global8_GlbVarID + 1;
      __debugInfo = "1035:GLScriptBasic.gbas";
      DIMPUSH(global3_Var, local4_Vari);
      __debugInfo = "1036:GLScriptBasic.gbas";
      DIMPUSH(global9_GlobalVar, local4_Vari);
      __debugInfo = "1033:GLScriptBasic.gbas"
    }
    __debugInfo = "1038:GLScriptBasic.gbas";
    func6_Output("Register Variable: " + local4_Vari.attr8_Name_Str + " realid: " + CAST2STRING(local4_Vari.attr2_id) + " id: " + CAST2STRING(func8_GetVarID(local4_Vari)));
    __debugInfo = "1039:GLScriptBasic.gbas";
    return tryClone(unref(local4_Vari));
    __debugInfo = "1041:GLScriptBasic.gbas";
    return tryClone(unref(new type4_TVar));
    __debugInfo = "1000:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_GetVarID(param1_V) {
  stackPush("function: GetVarID", __debugInfo);
  try {
    param1_V = unref(param1_V);
    var local3_Mul = 0, local7_FuncAdd = 0;
    __debugInfo = "1043:GLScriptBasic.gbas";
    local3_Mul = 1;
    __debugInfo = "1043:GLScriptBasic.gbas";
    local7_FuncAdd = global11_FuncVarSize;
    __debugInfo = "1049:GLScriptBasic.gbas";
    if(param1_V.attr8_IsGlobal == 0 ? 1 : 0) {
      __debugInfo = "1045:GLScriptBasic.gbas";
      local3_Mul = CAST2FLOAT(-1);
      __debugInfo = "1045:GLScriptBasic.gbas"
    }else {
      __debugInfo = "1047:GLScriptBasic.gbas";
      local7_FuncAdd = 0;
      __debugInfo = "1047:GLScriptBasic.gbas"
    }
    __debugInfo = "1049:GLScriptBasic.gbas";
    return tryClone(param1_V.attr2_id * local3_Mul - local7_FuncAdd);
    __debugInfo = "1051:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1043:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_IsString() {
  stackPush("function: IsString", __debugInfo);
  try {
    __debugInfo = "1068:GLScriptBasic.gbas";
    if((MID_Str(unref(global16_CurrentToken_Str), 0, 1) == CHR_Str(34) ? 1 : 0) && (MID_Str(unref(global16_CurrentToken_Str), LEN(global16_CurrentToken_Str) - 1, 1) == CHR_Str(34) ? 1 : 0) ? 1 : 0) {
      __debugInfo = "1064:GLScriptBasic.gbas";
      return tryClone(1);
      __debugInfo = "1064:GLScriptBasic.gbas"
    }else {
      __debugInfo = "1066:GLScriptBasic.gbas";
      return 0;
      __debugInfo = "1066:GLScriptBasic.gbas"
    }
    __debugInfo = "1069:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1068:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_GetToken() {
  stackPush("function: GetToken", __debugInfo);
  try {
    __debugInfo = "1070:GLScriptBasic.gbas";
    global14_CurrentTokenID = global14_CurrentTokenID + 1;
    __debugInfo = "1074:GLScriptBasic.gbas";
    if(global14_CurrentTokenID == LEN(global10_Tokens_Str) ? 1 : 0) {
      __debugInfo = "1072:GLScriptBasic.gbas";
      func5_Error("Unexpected end of file");
      __debugInfo = "1072:GLScriptBasic.gbas"
    }
    __debugInfo = "1074:GLScriptBasic.gbas";
    global16_CurrentToken_Str = global10_Tokens_Str.arrAccess(global14_CurrentTokenID).values[tmpPositionCache];
    __debugInfo = "1078:GLScriptBasic.gbas";
    if(global16_CurrentToken_Str == "\n" ? 1 : 0) {
      __debugInfo = "1076:GLScriptBasic.gbas";
      global11_CurrentLine = global11_CurrentLine + 1;
      __debugInfo = "1076:GLScriptBasic.gbas"
    }
    __debugInfo = "1080:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1070:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func10_LooseToken() {
  stackPush("function: LooseToken", __debugInfo);
  try {
    __debugInfo = "1081:GLScriptBasic.gbas";
    global14_CurrentTokenID = global14_CurrentTokenID - 1;
    __debugInfo = "1082:GLScriptBasic.gbas";
    global16_CurrentToken_Str = global10_Tokens_Str.arrAccess(global14_CurrentTokenID).values[tmpPositionCache];
    __debugInfo = "1086:GLScriptBasic.gbas";
    if(global16_CurrentToken_Str == "\n" ? 1 : 0) {
      __debugInfo = "1084:GLScriptBasic.gbas";
      global11_CurrentLine = global11_CurrentLine - 1;
      __debugInfo = "1084:GLScriptBasic.gbas"
    }
    __debugInfo = "1087:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1081:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func5_Match(param8_Text_Str) {
  stackPush("function: Match", __debugInfo);
  try {
    param8_Text_Str = unref(param8_Text_Str);
    __debugInfo = "1091:GLScriptBasic.gbas";
    if(global16_CurrentToken_Str != param8_Text_Str ? 1 : 0) {
      __debugInfo = "1089:GLScriptBasic.gbas";
      func5_Error("Unexpected symbol, expecting '" + param8_Text_Str + "'");
      __debugInfo = "1089:GLScriptBasic.gbas"
    }
    __debugInfo = "1091:GLScriptBasic.gbas";
    func8_GetToken();
    __debugInfo = "1093:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1091:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func3_Add() {
  stackPush("function: Add", __debugInfo);
  try {
    __debugInfo = "1094:GLScriptBasic.gbas";
    func10_AddUnknown(global16_CurrentToken_Str);
    __debugInfo = "1095:GLScriptBasic.gbas";
    func8_GetToken();
    __debugInfo = "1097:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1094:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func10_AddUnknown(param8_Text_Str) {
  stackPush("function: AddUnknown", __debugInfo);
  try {
    param8_Text_Str = unref(param8_Text_Str);
    __debugInfo = "1099:GLScriptBasic.gbas";
    global10_OpCode_Str = global10_OpCode_Str + param8_Text_Str + "\n";
    __debugInfo = "1101:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1099:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_GetLabel() {
  stackPush("function: GetLabel", __debugInfo);
  try {
    __debugInfo = "1104:GLScriptBasic.gbas";
    global15_CurrentJmpLabel = global15_CurrentJmpLabel + 1;
    __debugInfo = "1105:GLScriptBasic.gbas";
    return tryClone(global15_CurrentJmpLabel - 1);
    __debugInfo = "1107:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1104:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func6_Output(param8_Text_Str) {
  stackPush("function: Output", __debugInfo);
  try {
    param8_Text_Str = unref(param8_Text_Str);
    __debugInfo = "1109:GLScriptBasic.gbas";
    STDOUT(param8_Text_Str + "\n");
    __debugInfo = "1111:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1109:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func5_Error(param8_Text_Str) {
  stackPush("function: Error", __debugInfo);
  try {
    param8_Text_Str = unref(param8_Text_Str);
    __debugInfo = "1112:GLScriptBasic.gbas";
    STDERR("Error: " + REPLACE_Str(unref(param8_Text_Str), "\n", "NEWLINE") + " in line " + CAST2STRING(global11_CurrentLine + 1) + " at character '" + REPLACE_Str(unref(global16_CurrentToken_Str), "\n", "NEWLINE") + "'");
    __debugInfo = "1117:GLScriptBasic.gbas";
    END();
    __debugInfo = "1118:GLScriptBasic.gbas";
    return 0;
    __debugInfo = "1112:GLScriptBasic.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_SHOWSCREEN() {
  stackPush("sub: SCRIPT_SHOWSCREEN", __debugInfo);
  try {
    __debugInfo = "9:ScriptFunction.gbas";
    SHOWSCREEN();
    __debugInfo = "9:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_DRAWRECT() {
  stackPush("sub: SCRIPT_DRAWRECT", __debugInfo);
  try {
    var local1_A = 0, local1_b = 0, local1_C = 0, local1_D = 0, local1_E = 0;
    __debugInfo = "13:ScriptFunction.gbas";
    local1_E = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "14:ScriptFunction.gbas";
    local1_D = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "15:ScriptFunction.gbas";
    local1_C = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "16:ScriptFunction.gbas";
    local1_b = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "17:ScriptFunction.gbas";
    local1_A = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "18:ScriptFunction.gbas";
    DRAWRECT(unref(local1_A), unref(local1_b), unref(local1_C), unref(local1_D), unref(CAST2INT(local1_E)));
    __debugInfo = "13:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_RGB() {
  stackPush("sub: SCRIPT_RGB", __debugInfo);
  try {
    var local1_R = 0, local1_G = 0, local1_b = 0;
    __debugInfo = "23:ScriptFunction.gbas";
    local1_b = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "24:ScriptFunction.gbas";
    local1_G = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "25:ScriptFunction.gbas";
    local1_R = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "26:ScriptFunction.gbas";
    func15_StackPushNumber(global9_CurrentVM, CAST2FLOAT(RGB(unref(CAST2INT(local1_R)), unref(CAST2INT(local1_G)), unref(CAST2INT(local1_b)))));
    __debugInfo = "23:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_PRINT() {
  stackPush("sub: SCRIPT_PRINT", __debugInfo);
  try {
    var local5_A_Str = "", local1_b = 0, local1_C = 0;
    __debugInfo = "31:ScriptFunction.gbas";
    local1_C = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "32:ScriptFunction.gbas";
    local1_b = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "33:ScriptFunction.gbas";
    local5_A_Str = func18_StackPopString_Str(global9_CurrentVM);
    __debugInfo = "34:ScriptFunction.gbas";
    PRINT(unref(local5_A_Str), unref(local1_b), unref(local1_C), 0);
    __debugInfo = "31:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_KEY() {
  stackPush("sub: SCRIPT_KEY", __debugInfo);
  try {
    __debugInfo = "38:ScriptFunction.gbas";
    func15_StackPushNumber(global9_CurrentVM, CAST2FLOAT(KEY(CAST2INT(func14_StackPopNumber(global9_CurrentVM)))));
    __debugInfo = "38:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_BOXCOLL() {
  stackPush("sub: SCRIPT_BOXCOLL", __debugInfo);
  try {
    var local1_A = 0, local1_b = 0, local1_C = 0, local1_D = 0, local1_E = 0, local1_F = 0, local1_G = 0, local1_H = 0;
    __debugInfo = "43:ScriptFunction.gbas";
    local1_H = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "44:ScriptFunction.gbas";
    local1_G = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "45:ScriptFunction.gbas";
    local1_F = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "46:ScriptFunction.gbas";
    local1_E = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "47:ScriptFunction.gbas";
    local1_D = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "48:ScriptFunction.gbas";
    local1_C = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "49:ScriptFunction.gbas";
    local1_b = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "50:ScriptFunction.gbas";
    local1_A = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "51:ScriptFunction.gbas";
    func15_StackPushNumber(global9_CurrentVM, CAST2FLOAT(BOXCOLL(unref(CAST2INT(local1_A)), unref(CAST2INT(local1_b)), unref(CAST2INT(local1_C)), unref(CAST2INT(local1_D)), unref(CAST2INT(local1_E)), unref(CAST2INT(local1_F)), unref(CAST2INT(local1_G)), unref(CAST2INT(local1_H)))));
    __debugInfo = "43:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_SIN() {
  stackPush("sub: SCRIPT_SIN", __debugInfo);
  try {
    __debugInfo = "56:ScriptFunction.gbas";
    func15_StackPushNumber(global9_CurrentVM, SIN(func14_StackPopNumber(global9_CurrentVM)));
    __debugInfo = "56:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_COS() {
  stackPush("sub: SCRIPT_COS", __debugInfo);
  try {
    __debugInfo = "60:ScriptFunction.gbas";
    func15_StackPushNumber(global9_CurrentVM, COS(func14_StackPopNumber(global9_CurrentVM)));
    __debugInfo = "60:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_RND() {
  stackPush("sub: SCRIPT_RND", __debugInfo);
  try {
    __debugInfo = "64:ScriptFunction.gbas";
    func15_StackPushNumber(global9_CurrentVM, RND(func14_StackPopNumber(global9_CurrentVM)));
    __debugInfo = "64:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_STDOUT() {
  stackPush("sub: SCRIPT_STDOUT", __debugInfo);
  try {
    var local7_Str_Str = "";
    __debugInfo = "70:ScriptFunction.gbas";
    local7_Str_Str = func18_StackPopString_Str(global9_CurrentVM);
    __debugInfo = "71:ScriptFunction.gbas";
    STDOUT(local7_Str_Str + "\n");
    __debugInfo = "70:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_KEYWAIT() {
  stackPush("sub: SCRIPT_KEYWAIT", __debugInfo);
  try {
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_END() {
  stackPush("sub: SCRIPT_END", __debugInfo);
  try {
    __debugInfo = "82:ScriptFunction.gbas";
    END();
    __debugInfo = "82:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_DIMPUSH() {
  stackPush("sub: SCRIPT_DIMPUSH", __debugInfo);
  try {
    var local7_Val_Str = "", local2_ID = 0;
    __debugInfo = "86:ScriptFunction.gbas";
    local7_Val_Str = func18_StackPopString_Str(global9_CurrentVM);
    __debugInfo = "87:ScriptFunction.gbas";
    local2_ID = func14_StackPopNumber(global9_CurrentVM);
    __debugInfo = "93:ScriptFunction.gbas";
    if(global9_CurrentVM.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Typ == 0 ? 1 : 0) {
      __debugInfo = "89:ScriptFunction.gbas";
      DIMPUSH(global9_CurrentVM.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr, CAST2FLOAT(local7_Val_Str));
      __debugInfo = "89:ScriptFunction.gbas"
    }else {
      if(global9_CurrentVM.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Typ == 1 ? 1 : 0) {
        __debugInfo = "91:ScriptFunction.gbas";
        DIMPUSH(global9_CurrentVM.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str, local7_Val_Str);
        __debugInfo = "91:ScriptFunction.gbas"
      }
    }
    __debugInfo = "86:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function SCRIPT_STACKINFO() {
  stackPush("sub: SCRIPT_STACKINFO", __debugInfo);
  try {
    __debugInfo = "97:ScriptFunction.gbas";
    func17_Debug_OutputStack(global9_CurrentVM);
    __debugInfo = "97:ScriptFunction.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_CreateVM(param8_Code_Str) {
  stackPush("function: CreateVM", __debugInfo);
  try {
    param8_Code_Str = unref(param8_Code_Str);
    var local2_vm = new type3_TVM, local8_Line_Str = new GLBArray, local8_Word_Str = new GLBArray, local1_i = 0;
    __debugInfo = "129:VM.gbas";
    local2_vm.attr8_Code_Str = param8_Code_Str;
    __debugInfo = "131:VM.gbas";
    SPLITSTR(unref(param8_Code_Str), unref(local8_Line_Str), "\n", 1);
    __debugInfo = "133:VM.gbas";
    DIM(unref(local2_vm.attr6_OpCode), [LEN(local8_Line_Str)], new type7_TOpCode);
    __debugInfo = "244:VM.gbas";
    for(local1_i = 0;forCheck(local1_i, CAST2FLOAT(LEN(local8_Line_Str) - 1), 1);local1_i += 1) {
      __debugInfo = "139:VM.gbas";
      if(INSTR(unref(local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache]), "//", 0) != -1 ? 1 : 0) {
        __debugInfo = "137:VM.gbas";
        local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache] = MID_Str(unref(local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache]), 0, INSTR(unref(local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache]), "//", 0));
        __debugInfo = "137:VM.gbas"
      }
      __debugInfo = "139:VM.gbas";
      SPLITSTR(unref(local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache]), unref(local8_Word_Str), " ", 1);
      __debugInfo = "141:VM.gbas";
      local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr8_Text_Str = local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache];
      __debugInfo = "144:VM.gbas";
      var local16___SelectHelper3_ = "";
      __debugInfo = "144:VM.gbas";
      local16___SelectHelper3_ = local8_Word_Str.arrAccess(0).values[tmpPositionCache];
      __debugInfo = "243:VM.gbas";
      if(local16___SelectHelper3_ == "pushstr" ? 1 : 0) {
        __debugInfo = "146:VM.gbas";
        local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const9_OPPUSHSTR);
        __debugInfo = "147:VM.gbas";
        local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr7_Par_Str = MID_Str(unref(local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache]), LEN("pushstr") + 2, LEN(local8_Line_Str.arrAccess(local1_i).values[tmpPositionCache]) - 1 - LEN("pushstr") - 2);
        __debugInfo = "146:VM.gbas"
      }else {
        if(local16___SelectHelper3_ == "pushnum" ? 1 : 0) {
          __debugInfo = "149:VM.gbas";
          local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const9_OPPUSHNUM);
          __debugInfo = "150:VM.gbas";
          local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
          __debugInfo = "149:VM.gbas"
        }else {
          if(local16___SelectHelper3_ == "pop" ? 1 : 0) {
            __debugInfo = "152:VM.gbas";
            local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPPOP);
            __debugInfo = "152:VM.gbas"
          }else {
            if(local16___SelectHelper3_ == "add" ? 1 : 0) {
              __debugInfo = "154:VM.gbas";
              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPADD);
              __debugInfo = "154:VM.gbas"
            }else {
              if(local16___SelectHelper3_ == "sub" ? 1 : 0) {
                __debugInfo = "156:VM.gbas";
                local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPSUB);
                __debugInfo = "156:VM.gbas"
              }else {
                if(local16___SelectHelper3_ == "mul" ? 1 : 0) {
                  __debugInfo = "158:VM.gbas";
                  local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPMUL);
                  __debugInfo = "158:VM.gbas"
                }else {
                  if(local16___SelectHelper3_ == "div" ? 1 : 0) {
                    __debugInfo = "160:VM.gbas";
                    local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPDIV);
                    __debugInfo = "160:VM.gbas"
                  }else {
                    if(local16___SelectHelper3_ == "cmp" ? 1 : 0) {
                      __debugInfo = "162:VM.gbas";
                      local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPCMP);
                      __debugInfo = "162:VM.gbas"
                    }else {
                      if(local16___SelectHelper3_ == "less" ? 1 : 0) {
                        __debugInfo = "164:VM.gbas";
                        local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const6_OPLESS);
                        __debugInfo = "164:VM.gbas"
                      }else {
                        if(local16___SelectHelper3_ == "greater" ? 1 : 0) {
                          __debugInfo = "166:VM.gbas";
                          local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const9_OPGREATER);
                          __debugInfo = "166:VM.gbas"
                        }else {
                          if(local16___SelectHelper3_ == "lessequ" ? 1 : 0) {
                            __debugInfo = "168:VM.gbas";
                            local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const9_OPLESSEQU);
                            __debugInfo = "168:VM.gbas"
                          }else {
                            if(local16___SelectHelper3_ == "greaterequ" ? 1 : 0) {
                              __debugInfo = "170:VM.gbas";
                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const12_OPGREATEREQU);
                              __debugInfo = "170:VM.gbas"
                            }else {
                              if(local16___SelectHelper3_ == "and" ? 1 : 0) {
                                __debugInfo = "172:VM.gbas";
                                local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPAND);
                                __debugInfo = "172:VM.gbas"
                              }else {
                                if(local16___SelectHelper3_ == "or" ? 1 : 0) {
                                  __debugInfo = "174:VM.gbas";
                                  local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const4_OPOR);
                                  __debugInfo = "174:VM.gbas"
                                }else {
                                  if(local16___SelectHelper3_ == "inv" ? 1 : 0) {
                                    __debugInfo = "176:VM.gbas";
                                    local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPINV);
                                    __debugInfo = "176:VM.gbas"
                                  }else {
                                    if(local16___SelectHelper3_ == "ref" ? 1 : 0) {
                                      __debugInfo = "178:VM.gbas";
                                      local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPREF);
                                      __debugInfo = "179:VM.gbas";
                                      local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                      __debugInfo = "178:VM.gbas"
                                    }else {
                                      if(local16___SelectHelper3_ == "set" ? 1 : 0) {
                                        __debugInfo = "181:VM.gbas";
                                        local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPSET);
                                        __debugInfo = "181:VM.gbas"
                                      }else {
                                        if(local16___SelectHelper3_ == "call" ? 1 : 0) {
                                          var local4_Find = 0;
                                          __debugInfo = "183:VM.gbas";
                                          local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const6_OPCALL);
                                          __debugInfo = "184:VM.gbas";
                                          local4_Find = 0;
                                          __debugInfo = "194:VM.gbas";
                                          var forEachSaver4098 = global4_Defs;
                                          for(var forEachCounter4098 = 0;forEachCounter4098 < forEachSaver4098.values.length;forEachCounter4098++) {
                                            var local1_D = forEachSaver4098.values[forEachCounter4098];
                                            __debugInfo = "193:VM.gbas";
                                            if(local1_D.attr8_Name_Str == local8_Word_Str.arrAccess(1).values[tmpPositionCache] ? 1 : 0) {
                                              __debugInfo = "187:VM.gbas";
                                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const7_OPFCALL);
                                              __debugInfo = "188:VM.gbas";
                                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = local1_D.attr2_ID;
                                              __debugInfo = "189:VM.gbas";
                                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(1).values[tmpPositionCache] = CAST2FLOAT(local1_D.attr8_ParCount);
                                              __debugInfo = "190:VM.gbas";
                                              local4_Find = 1;
                                              __debugInfo = "192:VM.gbas";
                                              break;
                                              __debugInfo = "187:VM.gbas"
                                            }
                                            __debugInfo = "193:VM.gbas";
                                            forEachSaver4098.values[forEachCounter4098] = local1_D
                                          }
                                          __debugInfo = "195:VM.gbas";
                                          if(INSTR(unref(local8_Word_Str.arrAccess(1).values[tmpPositionCache]), "@", 0)) {
                                            __debugInfo = "195:VM.gbas";
                                            local8_Word_Str.arrAccess(1).values[tmpPositionCache] = MID_Str(unref(local8_Word_Str.arrAccess(1).values[tmpPositionCache]), 0, INSTR(unref(local8_Word_Str.arrAccess(1).values[tmpPositionCache]), "@", 0));
                                            __debugInfo = "195:VM.gbas"
                                          }
                                          __debugInfo = "199:VM.gbas";
                                          if(local4_Find == 0 ? 1 : 0) {
                                            __debugInfo = "197:VM.gbas";
                                            local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr7_Par_Str = local8_Word_Str.arrAccess(1).values[tmpPositionCache];
                                            __debugInfo = "197:VM.gbas"
                                          }
                                          __debugInfo = "183:VM.gbas"
                                        }else {
                                          if(local16___SelectHelper3_ == "jmp" ? 1 : 0) {
                                            __debugInfo = "200:VM.gbas";
                                            local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPJMP);
                                            __debugInfo = "201:VM.gbas";
                                            local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                            __debugInfo = "200:VM.gbas"
                                          }else {
                                            if(local16___SelectHelper3_ == "lbl" ? 1 : 0) {
                                              __debugInfo = "203:VM.gbas";
                                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPLBL);
                                              __debugInfo = "204:VM.gbas";
                                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                              __debugInfo = "205:VM.gbas";
                                              DIMPUSH(local2_vm.attr5_Label, 0);
                                              __debugInfo = "206:VM.gbas";
                                              local2_vm.attr5_Label.arrAccess(local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache]).values[tmpPositionCache] = CAST2INT(local1_i);
                                              __debugInfo = "203:VM.gbas"
                                            }else {
                                              if(local16___SelectHelper3_ == "check" ? 1 : 0) {
                                                __debugInfo = "208:VM.gbas";
                                                local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const7_OPCHECK);
                                                __debugInfo = "209:VM.gbas";
                                                local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                                __debugInfo = "208:VM.gbas"
                                              }else {
                                                if(local16___SelectHelper3_ == "notcheck" ? 1 : 0) {
                                                  __debugInfo = "211:VM.gbas";
                                                  local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const10_OPNOTCHECK);
                                                  __debugInfo = "212:VM.gbas";
                                                  local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                                  __debugInfo = "211:VM.gbas"
                                                }else {
                                                  if(local16___SelectHelper3_ == "var" ? 1 : 0) {
                                                    __debugInfo = "214:VM.gbas";
                                                    local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPVAR);
                                                    __debugInfo = "215:VM.gbas";
                                                    local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                                    __debugInfo = "214:VM.gbas"
                                                  }else {
                                                    if(local16___SelectHelper3_ == "pushvar" ? 1 : 0) {
                                                      __debugInfo = "217:VM.gbas";
                                                      local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const9_OPPUSHVAR);
                                                      __debugInfo = "217:VM.gbas"
                                                    }else {
                                                      if(local16___SelectHelper3_ == "pusharray" ? 1 : 0) {
                                                        __debugInfo = "219:VM.gbas";
                                                        local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const11_OPPUSHARRAY);
                                                        __debugInfo = "219:VM.gbas"
                                                      }else {
                                                        if(local16___SelectHelper3_ == "getarray" ? 1 : 0) {
                                                          __debugInfo = "221:VM.gbas";
                                                          local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const10_OPGETARRAY);
                                                          __debugInfo = "221:VM.gbas"
                                                        }else {
                                                          if(local16___SelectHelper3_ == "dimarray" ? 1 : 0) {
                                                            __debugInfo = "223:VM.gbas";
                                                            local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const10_OPDIMARRAY);
                                                            __debugInfo = "224:VM.gbas";
                                                            local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                                            __debugInfo = "223:VM.gbas"
                                                          }else {
                                                            if(local16___SelectHelper3_ == "redimarray" ? 1 : 0) {
                                                              __debugInfo = "226:VM.gbas";
                                                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const12_OPREDIMARRAY);
                                                              __debugInfo = "227:VM.gbas";
                                                              local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                                              __debugInfo = "226:VM.gbas"
                                                            }else {
                                                              if(local16___SelectHelper3_ == "ret" ? 1 : 0) {
                                                                __debugInfo = "229:VM.gbas";
                                                                local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr2_ID = CAST2INT(const5_OPRET);
                                                                __debugInfo = "230:VM.gbas";
                                                                local2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].attr3_Par.arrAccess(0).values[tmpPositionCache] = CAST2FLOAT(local8_Word_Str.arrAccess(1).values[tmpPositionCache]);
                                                                __debugInfo = "229:VM.gbas"
                                                              }else {
                                                                if(local16___SelectHelper3_ == "def" ? 1 : 0) {
                                                                  var local1_D = new type4_TDef;
                                                                  __debugInfo = "233:VM.gbas";
                                                                  local1_D.attr8_Name_Str = local8_Word_Str.arrAccess(1).values[tmpPositionCache];
                                                                  __debugInfo = "234:VM.gbas";
                                                                  local1_D.attr2_ID = CAST2FLOAT(local8_Word_Str.arrAccess(2).values[tmpPositionCache]);
                                                                  __debugInfo = "235:VM.gbas";
                                                                  local1_D.attr8_ParCount = CAST2INT(local8_Word_Str.arrAccess(3).values[tmpPositionCache]);
                                                                  __debugInfo = "236:VM.gbas";
                                                                  DIMPUSH(global4_Defs, local1_D);
                                                                  __debugInfo = "233:VM.gbas"
                                                                }else {
                                                                  __debugInfo = "238:VM.gbas";
                                                                  func6_Output("Unknown opcode " + local8_Word_Str.arrAccess(local1_i).values[tmpPositionCache]);
                                                                  __debugInfo = "238:VM.gbas"
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      __debugInfo = "144:VM.gbas";
      __debugInfo = "139:VM.gbas"
    }
    __debugInfo = "245:VM.gbas";
    return tryClone(unref(local2_vm));
    __debugInfo = "247:VM.gbas";
    return tryClone(unref(new type3_TVM));
    __debugInfo = "129:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func9_ExecuteVM(param2_vm, param8_StartPos) {
  stackPush("function: ExecuteVM", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    param8_StartPos = unref(param8_StartPos);
    var local3_Ref = 0, local2_Op = new type7_TOpCode, local1_i = 0;
    __debugInfo = "249:VM.gbas";
    func15_StackPushNumber(param2_vm, 0);
    __debugInfo = "252:VM.gbas";
    global9_CurrentOP.attr8_Text_Str = "Only in debug Mode";
    __debugInfo = "556:VM.gbas";
    for(local1_i = param8_StartPos;forCheck(local1_i, CAST2FLOAT(LEN(param2_vm.attr6_OpCode) - 1), 1);local1_i += 1) {
      __debugInfo = "254:VM.gbas";
      local2_Op = param2_vm.attr6_OpCode.arrAccess(local1_i).values[tmpPositionCache].clone();
      __debugInfo = "256:VM.gbas";
      DEBUG("Execute: " + local2_Op.attr8_Text_Str + "\n");
      __debugInfo = "257:VM.gbas";
      global9_CurrentOP = local2_Op.clone();
      __debugInfo = "259:VM.gbas";
      if(LEN(param2_vm.attr5_Stack) < 1 ? 1 : 0) {
        __debugInfo = "259:VM.gbas";
        func15_StackPushNumber(param2_vm, 0);
        __debugInfo = "259:VM.gbas"
      }
      __debugInfo = "260:VM.gbas";
      var local16___SelectHelper4_ = 0;
      __debugInfo = "260:VM.gbas";
      local16___SelectHelper4_ = local2_Op.attr2_ID;
      __debugInfo = "555:VM.gbas";
      if(local16___SelectHelper4_ == CAST2INT(const9_OPPUSHSTR) ? 1 : 0) {
        __debugInfo = "262:VM.gbas";
        func15_StackPushString(param2_vm, local2_Op.attr7_Par_Str);
        __debugInfo = "262:VM.gbas"
      }else {
        if(local16___SelectHelper4_ == CAST2INT(const9_OPPUSHNUM) ? 1 : 0) {
          __debugInfo = "264:VM.gbas";
          func15_StackPushNumber(param2_vm, local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]);
          __debugInfo = "264:VM.gbas"
        }else {
          if(local16___SelectHelper4_ == CAST2INT(const5_OPPOP) ? 1 : 0) {
            __debugInfo = "266:VM.gbas";
            func8_StackPop(param2_vm);
            __debugInfo = "266:VM.gbas"
          }else {
            if(local16___SelectHelper4_ == CAST2INT(const5_OPADD) ? 1 : 0) {
              var local5_A_Str = "", local5_B_Str = "";
              __debugInfo = "269:VM.gbas";
              local5_B_Str = func18_StackPopString_Str(param2_vm);
              __debugInfo = "270:VM.gbas";
              local5_A_Str = func18_StackPopString_Str(param2_vm);
              __debugInfo = "279:VM.gbas";
              if(func8_IsValue2(local5_A_Str) && func8_IsValue2(local5_B_Str) ? 1 : 0) {
                var local1_C = 0, local1_D = 0;
                __debugInfo = "273:VM.gbas";
                local1_C = CAST2FLOAT(local5_A_Str);
                __debugInfo = "274:VM.gbas";
                local1_D = CAST2FLOAT(local5_B_Str);
                __debugInfo = "275:VM.gbas";
                func15_StackPushNumber(param2_vm, local1_C + local1_D);
                __debugInfo = "273:VM.gbas"
              }else {
                __debugInfo = "277:VM.gbas";
                func15_StackPushString(param2_vm, local5_A_Str + local5_B_Str);
                __debugInfo = "277:VM.gbas"
              }
              __debugInfo = "269:VM.gbas"
            }else {
              if(local16___SelectHelper4_ == CAST2INT(const5_OPSUB) ? 1 : 0) {
                var local1_A = 0, local1_b = 0;
                __debugInfo = "281:VM.gbas";
                local1_b = func14_StackPopNumber(param2_vm);
                __debugInfo = "282:VM.gbas";
                local1_A = func14_StackPopNumber(param2_vm);
                __debugInfo = "283:VM.gbas";
                func15_StackPushNumber(param2_vm, local1_A - local1_b);
                __debugInfo = "281:VM.gbas"
              }else {
                if(local16___SelectHelper4_ == CAST2INT(const5_OPMUL) ? 1 : 0) {
                  var local1_A = 0, local1_b = 0;
                  __debugInfo = "286:VM.gbas";
                  local1_b = func14_StackPopNumber(param2_vm);
                  __debugInfo = "287:VM.gbas";
                  local1_A = func14_StackPopNumber(param2_vm);
                  __debugInfo = "288:VM.gbas";
                  func15_StackPushNumber(param2_vm, local1_A * local1_b);
                  __debugInfo = "286:VM.gbas"
                }else {
                  if(local16___SelectHelper4_ == CAST2INT(const5_OPDIV) ? 1 : 0) {
                    var local1_A = 0, local1_b = 0;
                    __debugInfo = "291:VM.gbas";
                    local1_b = func14_StackPopNumber(param2_vm);
                    __debugInfo = "292:VM.gbas";
                    local1_A = func14_StackPopNumber(param2_vm);
                    __debugInfo = "293:VM.gbas";
                    func15_StackPushNumber(param2_vm, local1_A / local1_b);
                    __debugInfo = "291:VM.gbas"
                  }else {
                    if(local16___SelectHelper4_ == CAST2INT(const5_OPCMP) ? 1 : 0) {
                      var local5_A_Str = "", local5_b_Str = "";
                      __debugInfo = "297:VM.gbas";
                      local5_b_Str = func18_StackPopString_Str(param2_vm);
                      __debugInfo = "298:VM.gbas";
                      local5_A_Str = func18_StackPopString_Str(param2_vm);
                      __debugInfo = "307:VM.gbas";
                      if(func8_IsValue2(local5_A_Str) && func8_IsValue2(local5_b_Str) ? 1 : 0) {
                        var local1_D = 0, local1_C = 0;
                        __debugInfo = "301:VM.gbas";
                        local1_D = CAST2FLOAT(local5_A_Str);
                        __debugInfo = "302:VM.gbas";
                        local1_C = CAST2FLOAT(local5_b_Str);
                        __debugInfo = "303:VM.gbas";
                        func15_StackPushNumber(param2_vm, CAST2FLOAT(local1_C == local1_D ? 1 : 0));
                        __debugInfo = "301:VM.gbas"
                      }else {
                        __debugInfo = "305:VM.gbas";
                        func15_StackPushNumber(param2_vm, CAST2FLOAT(local5_A_Str == local5_b_Str ? 1 : 0));
                        __debugInfo = "305:VM.gbas"
                      }
                      __debugInfo = "297:VM.gbas"
                    }else {
                      if(local16___SelectHelper4_ == CAST2INT(const6_OPLESS) ? 1 : 0) {
                        var local1_A = 0, local1_b = 0;
                        __debugInfo = "309:VM.gbas";
                        local1_b = func14_StackPopNumber(param2_vm);
                        __debugInfo = "310:VM.gbas";
                        local1_A = func14_StackPopNumber(param2_vm);
                        __debugInfo = "311:VM.gbas";
                        func15_StackPushNumber(param2_vm, CAST2FLOAT(local1_A < local1_b ? 1 : 0));
                        __debugInfo = "309:VM.gbas"
                      }else {
                        if(local16___SelectHelper4_ == CAST2INT(const9_OPGREATER) ? 1 : 0) {
                          var local1_A = 0, local1_b = 0;
                          __debugInfo = "314:VM.gbas";
                          local1_b = func14_StackPopNumber(param2_vm);
                          __debugInfo = "315:VM.gbas";
                          local1_A = func14_StackPopNumber(param2_vm);
                          __debugInfo = "316:VM.gbas";
                          func15_StackPushNumber(param2_vm, CAST2FLOAT(local1_A > local1_b ? 1 : 0));
                          __debugInfo = "314:VM.gbas"
                        }else {
                          if(local16___SelectHelper4_ == CAST2INT(const9_OPLESSEQU) ? 1 : 0) {
                            var local1_A = 0, local1_b = 0;
                            __debugInfo = "319:VM.gbas";
                            local1_b = func14_StackPopNumber(param2_vm);
                            __debugInfo = "320:VM.gbas";
                            local1_A = func14_StackPopNumber(param2_vm);
                            __debugInfo = "321:VM.gbas";
                            func15_StackPushNumber(param2_vm, CAST2FLOAT(local1_A <= local1_b ? 1 : 0));
                            __debugInfo = "319:VM.gbas"
                          }else {
                            if(local16___SelectHelper4_ == CAST2INT(const12_OPGREATEREQU) ? 1 : 0) {
                              var local1_A = 0, local1_b = 0;
                              __debugInfo = "324:VM.gbas";
                              local1_b = func14_StackPopNumber(param2_vm);
                              __debugInfo = "325:VM.gbas";
                              local1_A = func14_StackPopNumber(param2_vm);
                              __debugInfo = "326:VM.gbas";
                              func15_StackPushNumber(param2_vm, CAST2FLOAT(local1_A >= local1_b ? 1 : 0));
                              __debugInfo = "324:VM.gbas"
                            }else {
                              if(local16___SelectHelper4_ == CAST2INT(const5_OPAND) ? 1 : 0) {
                                var local1_A = 0, local1_b = 0;
                                __debugInfo = "329:VM.gbas";
                                local1_b = func14_StackPopNumber(param2_vm);
                                __debugInfo = "330:VM.gbas";
                                local1_A = func14_StackPopNumber(param2_vm);
                                __debugInfo = "331:VM.gbas";
                                func15_StackPushNumber(param2_vm, CAST2FLOAT(local1_A && local1_b ? 1 : 0));
                                __debugInfo = "329:VM.gbas"
                              }else {
                                if(local16___SelectHelper4_ == CAST2INT(const4_OPOR) ? 1 : 0) {
                                  var local1_A = 0, local1_b = 0;
                                  __debugInfo = "334:VM.gbas";
                                  local1_b = func14_StackPopNumber(param2_vm);
                                  __debugInfo = "335:VM.gbas";
                                  local1_A = func14_StackPopNumber(param2_vm);
                                  __debugInfo = "336:VM.gbas";
                                  func15_StackPushNumber(param2_vm, CAST2FLOAT(local1_A || local1_b ? 1 : 0));
                                  __debugInfo = "334:VM.gbas"
                                }else {
                                  if(local16___SelectHelper4_ == CAST2INT(const5_OPINV) ? 1 : 0) {
                                    var local1_A = 0;
                                    __debugInfo = "339:VM.gbas";
                                    local1_A = func14_StackPopNumber(param2_vm);
                                    __debugInfo = "340:VM.gbas";
                                    func15_StackPushNumber(param2_vm, CAST2FLOAT(INTEGER(unref(local1_A)) == 0 ? 1 : 0));
                                    __debugInfo = "339:VM.gbas"
                                  }else {
                                    if(local16___SelectHelper4_ == CAST2INT(const5_OPREF) ? 1 : 0) {
                                      __debugInfo = "342:VM.gbas";
                                      local3_Ref = CAST2INT(local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]);
                                      __debugInfo = "342:VM.gbas"
                                    }else {
                                      if(local16___SelectHelper4_ == CAST2INT(const5_OPSET) ? 1 : 0) {
                                        __debugInfo = "398:VM.gbas";
                                        if(param2_vm.attr5_Stack.arrAccess(-1).values[tmpPositionCache].attr7_IsArray) {
                                          __debugInfo = "345:VM.gbas";
                                          param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str = param2_vm.attr3_Var.arrAccess(param2_vm.attr5_Stack.arrAccess(-1).values[tmpPositionCache].attr3_Par).values[tmpPositionCache].attr7_Arr_Str.clone();
                                          __debugInfo = "346:VM.gbas";
                                          param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr = param2_vm.attr3_Var.arrAccess(param2_vm.attr5_Stack.arrAccess(-1).values[tmpPositionCache].attr3_Par).values[tmpPositionCache].attr3_Arr.clone();
                                          __debugInfo = "347:VM.gbas";
                                          param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr9_Dimension = param2_vm.attr3_Var.arrAccess(param2_vm.attr5_Stack.arrAccess(-1).values[tmpPositionCache].attr3_Par).values[tmpPositionCache].attr9_Dimension;
                                          __debugInfo = "348:VM.gbas";
                                          param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ = param2_vm.attr3_Var.arrAccess(param2_vm.attr5_Stack.arrAccess(-1).values[tmpPositionCache].attr3_Par).values[tmpPositionCache].attr3_Typ;
                                          __debugInfo = "349:VM.gbas";
                                          param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_IsArray = 1;
                                          __debugInfo = "350:VM.gbas";
                                          func8_StackPop(param2_vm);
                                          __debugInfo = "345:VM.gbas"
                                        }else {
                                          if(CAST2FLOAT(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_IsArray) == 0 ? 1 : 0) {
                                            var local6_Member = new type12_TStackMember;
                                            __debugInfo = "354:VM.gbas";
                                            local6_Member = func8_StackPop(param2_vm).clone();
                                            __debugInfo = "355:VM.gbas";
                                            param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Par = local6_Member.attr3_Par;
                                            __debugInfo = "356:VM.gbas";
                                            param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Par_Str = local6_Member.attr7_Par_Str;
                                            __debugInfo = "365:VM.gbas";
                                            if(func8_IsValue2(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Par_Str)) {
                                              __debugInfo = "358:VM.gbas";
                                              param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Par = CAST2FLOAT(local6_Member.attr7_Par_Str);
                                              __debugInfo = "359:VM.gbas";
                                              param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ = 1;
                                              __debugInfo = "358:VM.gbas"
                                            }else {
                                              if(LEN(local6_Member.attr7_Par_Str) > 0 ? 1 : 0) {
                                                __debugInfo = "361:VM.gbas";
                                                param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ = 1;
                                                __debugInfo = "361:VM.gbas"
                                              }else {
                                                __debugInfo = "363:VM.gbas";
                                                param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ = 0;
                                                __debugInfo = "363:VM.gbas"
                                              }
                                            }
                                            __debugInfo = "354:VM.gbas"
                                          }else {
                                            __debugInfo = "397:VM.gbas";
                                            if(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ == 0 ? 1 : 0) {
                                              __debugInfo = "367:VM.gbas";
                                              var local16___SelectHelper5_ = 0;
                                              __debugInfo = "367:VM.gbas";
                                              local16___SelectHelper5_ = param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr9_Dimension;
                                              __debugInfo = "381:VM.gbas";
                                              if(local16___SelectHelper5_ == 0 ? 1 : 0) {
                                                var local1_A = 0, local1_b = 0;
                                                __debugInfo = "369:VM.gbas";
                                                local1_A = func14_StackPopNumber(param2_vm);
                                                __debugInfo = "369:VM.gbas";
                                                local1_b = func14_StackPopNumber(param2_vm);
                                                __debugInfo = "370:VM.gbas";
                                                param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_b).values[tmpPositionCache] = local1_A;
                                                __debugInfo = "369:VM.gbas"
                                              }else {
                                                if(local16___SelectHelper5_ == 1 ? 1 : 0) {
                                                  var local1_A = 0, local1_C = 0, local1_b = 0;
                                                  __debugInfo = "372:VM.gbas";
                                                  local1_A = func14_StackPopNumber(param2_vm);
                                                  __debugInfo = "372:VM.gbas";
                                                  local1_C = func14_StackPopNumber(param2_vm);
                                                  __debugInfo = "372:VM.gbas";
                                                  local1_b = func14_StackPopNumber(param2_vm);
                                                  __debugInfo = "373:VM.gbas";
                                                  param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_b, local1_C).values[tmpPositionCache] = local1_A;
                                                  __debugInfo = "372:VM.gbas"
                                                }else {
                                                  if(local16___SelectHelper5_ == 2 ? 1 : 0) {
                                                    var local1_A = 0, local1_D = 0, local1_C = 0, local1_b = 0;
                                                    __debugInfo = "375:VM.gbas";
                                                    local1_A = func14_StackPopNumber(param2_vm);
                                                    __debugInfo = "375:VM.gbas";
                                                    local1_D = func14_StackPopNumber(param2_vm);
                                                    __debugInfo = "375:VM.gbas";
                                                    local1_C = func14_StackPopNumber(param2_vm);
                                                    __debugInfo = "375:VM.gbas";
                                                    local1_b = func14_StackPopNumber(param2_vm);
                                                    __debugInfo = "376:VM.gbas";
                                                    param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_b, local1_C, local1_D).values[tmpPositionCache] = local1_A;
                                                    __debugInfo = "375:VM.gbas"
                                                  }else {
                                                    if(local16___SelectHelper5_ == 3 ? 1 : 0) {
                                                      var local1_A = 0, local1_E = 0, local1_D = 0, local1_C = 0, local1_b = 0;
                                                      __debugInfo = "378:VM.gbas";
                                                      local1_A = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "378:VM.gbas";
                                                      local1_E = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "378:VM.gbas";
                                                      local1_D = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "378:VM.gbas";
                                                      local1_C = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "378:VM.gbas";
                                                      local1_b = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "379:VM.gbas";
                                                      param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_b, local1_C, local1_D, local1_E).values[tmpPositionCache] = local1_A;
                                                      __debugInfo = "378:VM.gbas"
                                                    }
                                                  }
                                                }
                                              }
                                              __debugInfo = "367:VM.gbas";
                                              __debugInfo = "367:VM.gbas"
                                            }else {
                                              if(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ == 1 ? 1 : 0) {
                                                __debugInfo = "382:VM.gbas";
                                                var local16___SelectHelper6_ = 0;
                                                __debugInfo = "382:VM.gbas";
                                                local16___SelectHelper6_ = param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr9_Dimension;
                                                __debugInfo = "396:VM.gbas";
                                                if(local16___SelectHelper6_ == 0 ? 1 : 0) {
                                                  var local5_A_Str = "", local1_b = 0;
                                                  __debugInfo = "384:VM.gbas";
                                                  local5_A_Str = func18_StackPopString_Str(param2_vm);
                                                  __debugInfo = "384:VM.gbas";
                                                  local1_b = func14_StackPopNumber(param2_vm);
                                                  __debugInfo = "385:VM.gbas";
                                                  param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_b).values[tmpPositionCache] = local5_A_Str;
                                                  __debugInfo = "384:VM.gbas"
                                                }else {
                                                  if(local16___SelectHelper6_ == 1 ? 1 : 0) {
                                                    var local5_A_Str = "", local1_C = 0, local1_b = 0;
                                                    __debugInfo = "387:VM.gbas";
                                                    local5_A_Str = func18_StackPopString_Str(param2_vm);
                                                    __debugInfo = "387:VM.gbas";
                                                    local1_C = func14_StackPopNumber(param2_vm);
                                                    __debugInfo = "387:VM.gbas";
                                                    local1_b = func14_StackPopNumber(param2_vm);
                                                    __debugInfo = "388:VM.gbas";
                                                    param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_b, local1_C).values[tmpPositionCache] = local5_A_Str;
                                                    __debugInfo = "387:VM.gbas"
                                                  }else {
                                                    if(local16___SelectHelper6_ == 2 ? 1 : 0) {
                                                      var local5_A_Str = "", local1_D = 0, local1_C = 0, local1_b = 0;
                                                      __debugInfo = "390:VM.gbas";
                                                      local5_A_Str = func18_StackPopString_Str(param2_vm);
                                                      __debugInfo = "390:VM.gbas";
                                                      local1_D = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "390:VM.gbas";
                                                      local1_C = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "390:VM.gbas";
                                                      local1_b = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "391:VM.gbas";
                                                      param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_b, local1_C, local1_D).values[tmpPositionCache] = local5_A_Str;
                                                      __debugInfo = "390:VM.gbas"
                                                    }else {
                                                      if(local16___SelectHelper6_ == 3 ? 1 : 0) {
                                                        var local5_A_Str = "", local1_E = 0, local1_D = 0, local1_C = 0, local1_b = 0;
                                                        __debugInfo = "393:VM.gbas";
                                                        local5_A_Str = func18_StackPopString_Str(param2_vm);
                                                        __debugInfo = "393:VM.gbas";
                                                        local1_E = func14_StackPopNumber(param2_vm);
                                                        __debugInfo = "393:VM.gbas";
                                                        local1_D = func14_StackPopNumber(param2_vm);
                                                        __debugInfo = "393:VM.gbas";
                                                        local1_C = func14_StackPopNumber(param2_vm);
                                                        __debugInfo = "393:VM.gbas";
                                                        local1_b = func14_StackPopNumber(param2_vm);
                                                        __debugInfo = "394:VM.gbas";
                                                        param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_b, local1_C, local1_D, local1_E).values[tmpPositionCache] = local5_A_Str;
                                                        __debugInfo = "393:VM.gbas"
                                                      }
                                                    }
                                                  }
                                                }
                                                __debugInfo = "382:VM.gbas";
                                                __debugInfo = "382:VM.gbas"
                                              }
                                            }
                                            __debugInfo = "397:VM.gbas"
                                          }
                                        }
                                        __debugInfo = "398:VM.gbas";
                                        local3_Ref = 0;
                                        __debugInfo = "398:VM.gbas"
                                      }else {
                                        if(local16___SelectHelper4_ == CAST2INT(const6_OPCALL) ? 1 : 0) {
                                          __debugInfo = "400:VM.gbas";
                                          global9_CurrentVM = param2_vm.clone();
                                          __debugInfo = "404:VM.gbas";
                                          if(CALLBYNAME(unref(local2_Op.attr7_Par_Str)) == 0 ? 1 : 0) {
                                            __debugInfo = "402:VM.gbas";
                                            STDERR("Failed to call '" + local2_Op.attr7_Par_Str + "'.");
                                            __debugInfo = "402:VM.gbas"
                                          }
                                          __debugInfo = "404:VM.gbas";
                                          param2_vm = global9_CurrentVM.clone();
                                          __debugInfo = "400:VM.gbas"
                                        }else {
                                          if(local16___SelectHelper4_ == CAST2INT(const7_OPFCALL) ? 1 : 0) {
                                            var local5_Frame = new type11_TStackFrame;
                                            __debugInfo = "407:VM.gbas";
                                            local5_Frame.attr7_Backjmp = local1_i;
                                            __debugInfo = "408:VM.gbas";
                                            local5_Frame.attr3_Ref = CAST2FLOAT(local3_Ref);
                                            __debugInfo = "409:VM.gbas";
                                            DIMPUSH(param2_vm.attr6_Frames, local5_Frame);
                                            __debugInfo = "410:VM.gbas";
                                            local1_i = CAST2FLOAT(param2_vm.attr5_Label.arrAccess(local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]).values[tmpPositionCache]);
                                            __debugInfo = "407:VM.gbas"
                                          }else {
                                            if(local16___SelectHelper4_ == CAST2INT(const5_OPRET) ? 1 : 0) {
                                              var local6_Member = new type12_TStackMember, local5_Frame = new type11_TStackFrame;
                                              __debugInfo = "413:VM.gbas";
                                              local6_Member = func8_StackPop(param2_vm).clone();
                                              __debugInfo = "415:VM.gbas";
                                              local5_Frame = param2_vm.attr6_Frames.arrAccess(-1).values[tmpPositionCache].clone();
                                              __debugInfo = "416:VM.gbas";
                                              DIMDEL(param2_vm.attr6_Frames, -1);
                                              __debugInfo = "417:VM.gbas";
                                              local1_i = local5_Frame.attr7_Backjmp;
                                              __debugInfo = "418:VM.gbas";
                                              local3_Ref = CAST2INT(local5_Frame.attr3_Ref);
                                              __debugInfo = "419:VM.gbas";
                                              REDIM(unref(param2_vm.attr3_Var), [CAST2FLOAT(LEN(param2_vm.attr3_Var)) - local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]], new type9_TVariable);
                                              __debugInfo = "420:VM.gbas";
                                              func9_StackPush(param2_vm, local6_Member);
                                              __debugInfo = "413:VM.gbas"
                                            }else {
                                              if(local16___SelectHelper4_ == CAST2INT(const5_OPLBL) ? 1 : 0) {
                                              }else {
                                                if(local16___SelectHelper4_ == CAST2INT(const5_OPJMP) ? 1 : 0) {
                                                  __debugInfo = "424:VM.gbas";
                                                  local1_i = CAST2FLOAT(param2_vm.attr5_Label.arrAccess(local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]).values[tmpPositionCache]);
                                                  __debugInfo = "424:VM.gbas"
                                                }else {
                                                  if(local16___SelectHelper4_ == CAST2INT(const7_OPCHECK) ? 1 : 0) {
                                                    var local1_A = 0;
                                                    __debugInfo = "426:VM.gbas";
                                                    local1_A = func14_StackPopNumber(param2_vm);
                                                    __debugInfo = "430:VM.gbas";
                                                    if(local1_A != 0 ? 1 : 0) {
                                                      __debugInfo = "428:VM.gbas";
                                                      local1_i = CAST2FLOAT(param2_vm.attr5_Label.arrAccess(local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]).values[tmpPositionCache]);
                                                      __debugInfo = "428:VM.gbas"
                                                    }
                                                    __debugInfo = "426:VM.gbas"
                                                  }else {
                                                    if(local16___SelectHelper4_ == CAST2INT(const10_OPNOTCHECK) ? 1 : 0) {
                                                      var local1_A = 0;
                                                      __debugInfo = "431:VM.gbas";
                                                      local1_A = func14_StackPopNumber(param2_vm);
                                                      __debugInfo = "435:VM.gbas";
                                                      if(local1_A == 0 ? 1 : 0) {
                                                        __debugInfo = "433:VM.gbas";
                                                        local1_i = CAST2FLOAT(param2_vm.attr5_Label.arrAccess(local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]).values[tmpPositionCache]);
                                                        __debugInfo = "433:VM.gbas"
                                                      }
                                                      __debugInfo = "431:VM.gbas"
                                                    }else {
                                                      if(local16___SelectHelper4_ == CAST2INT(const5_OPVAR) ? 1 : 0) {
                                                        var local3_Var = new type9_TVariable;
                                                        __debugInfo = "437:VM.gbas";
                                                        local3_Var.attr3_Typ = CAST2INT(local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]);
                                                        __debugInfo = "438:VM.gbas";
                                                        DIMPUSH(param2_vm.attr3_Var, local3_Var);
                                                        __debugInfo = "437:VM.gbas"
                                                      }else {
                                                        if(local16___SelectHelper4_ == CAST2INT(const9_OPPUSHVAR) ? 1 : 0) {
                                                          __debugInfo = "481:VM.gbas";
                                                          if(CAST2FLOAT(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_IsArray) == 0 ? 1 : 0) {
                                                            var local6_Member = new type12_TStackMember;
                                                            __debugInfo = "442:VM.gbas";
                                                            local6_Member.attr3_Par = param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Par;
                                                            __debugInfo = "443:VM.gbas";
                                                            local6_Member.attr7_Par_Str = param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Par_Str;
                                                            __debugInfo = "444:VM.gbas";
                                                            local6_Member.attr3_Typ = param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ;
                                                            __debugInfo = "445:VM.gbas";
                                                            func9_StackPush(param2_vm, local6_Member);
                                                            __debugInfo = "442:VM.gbas"
                                                          }else {
                                                            __debugInfo = "480:VM.gbas";
                                                            if(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ == 0 ? 1 : 0) {
                                                              __debugInfo = "448:VM.gbas";
                                                              var local16___SelectHelper7_ = 0;
                                                              __debugInfo = "448:VM.gbas";
                                                              local16___SelectHelper7_ = param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr9_Dimension;
                                                              __debugInfo = "462:VM.gbas";
                                                              if(local16___SelectHelper7_ == 0 ? 1 : 0) {
                                                                var local1_A = 0;
                                                                __debugInfo = "450:VM.gbas";
                                                                local1_A = func14_StackPopNumber(param2_vm);
                                                                __debugInfo = "451:VM.gbas";
                                                                func15_StackPushNumber(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_A).values[tmpPositionCache]);
                                                                __debugInfo = "450:VM.gbas"
                                                              }else {
                                                                if(local16___SelectHelper7_ == 1 ? 1 : 0) {
                                                                  var local1_b = 0, local1_A = 0;
                                                                  __debugInfo = "453:VM.gbas";
                                                                  local1_b = func14_StackPopNumber(param2_vm);
                                                                  __debugInfo = "453:VM.gbas";
                                                                  local1_A = func14_StackPopNumber(param2_vm);
                                                                  __debugInfo = "454:VM.gbas";
                                                                  func15_StackPushNumber(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_A, local1_b).values[tmpPositionCache]);
                                                                  __debugInfo = "453:VM.gbas"
                                                                }else {
                                                                  if(local16___SelectHelper7_ == 2 ? 1 : 0) {
                                                                    var local1_C = 0, local1_b = 0, local1_A = 0;
                                                                    __debugInfo = "456:VM.gbas";
                                                                    local1_C = func14_StackPopNumber(param2_vm);
                                                                    __debugInfo = "456:VM.gbas";
                                                                    local1_b = func14_StackPopNumber(param2_vm);
                                                                    __debugInfo = "456:VM.gbas";
                                                                    local1_A = func14_StackPopNumber(param2_vm);
                                                                    __debugInfo = "457:VM.gbas";
                                                                    func15_StackPushNumber(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_A, local1_b, local1_C).values[tmpPositionCache]);
                                                                    __debugInfo = "456:VM.gbas"
                                                                  }else {
                                                                    if(local16___SelectHelper7_ == 3 ? 1 : 0) {
                                                                      var local1_D = 0, local1_C = 0, local1_b = 0, local1_A = 0;
                                                                      __debugInfo = "459:VM.gbas";
                                                                      local1_D = func14_StackPopNumber(param2_vm);
                                                                      __debugInfo = "459:VM.gbas";
                                                                      local1_C = func14_StackPopNumber(param2_vm);
                                                                      __debugInfo = "459:VM.gbas";
                                                                      local1_b = func14_StackPopNumber(param2_vm);
                                                                      __debugInfo = "459:VM.gbas";
                                                                      local1_A = func14_StackPopNumber(param2_vm);
                                                                      __debugInfo = "460:VM.gbas";
                                                                      func15_StackPushNumber(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Arr.arrAccess(local1_A, local1_b, local1_C, local1_D).values[tmpPositionCache]);
                                                                      __debugInfo = "459:VM.gbas"
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                              __debugInfo = "448:VM.gbas";
                                                              __debugInfo = "448:VM.gbas"
                                                            }else {
                                                              if(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ == 1 ? 1 : 0) {
                                                                __debugInfo = "463:VM.gbas";
                                                                var local16___SelectHelper8_ = 0;
                                                                __debugInfo = "463:VM.gbas";
                                                                local16___SelectHelper8_ = param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr9_Dimension;
                                                                __debugInfo = "477:VM.gbas";
                                                                if(local16___SelectHelper8_ == 0 ? 1 : 0) {
                                                                  var local1_A = 0;
                                                                  __debugInfo = "465:VM.gbas";
                                                                  local1_A = func14_StackPopNumber(param2_vm);
                                                                  __debugInfo = "466:VM.gbas";
                                                                  func15_StackPushString(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_A).values[tmpPositionCache]);
                                                                  __debugInfo = "465:VM.gbas"
                                                                }else {
                                                                  if(local16___SelectHelper8_ == 1 ? 1 : 0) {
                                                                    var local1_b = 0, local1_A = 0;
                                                                    __debugInfo = "468:VM.gbas";
                                                                    local1_b = func14_StackPopNumber(param2_vm);
                                                                    __debugInfo = "468:VM.gbas";
                                                                    local1_A = func14_StackPopNumber(param2_vm);
                                                                    __debugInfo = "469:VM.gbas";
                                                                    func15_StackPushString(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_A, local1_b).values[tmpPositionCache]);
                                                                    __debugInfo = "468:VM.gbas"
                                                                  }else {
                                                                    if(local16___SelectHelper8_ == 2 ? 1 : 0) {
                                                                      var local1_C = 0, local1_b = 0, local1_A = 0;
                                                                      __debugInfo = "471:VM.gbas";
                                                                      local1_C = func14_StackPopNumber(param2_vm);
                                                                      __debugInfo = "471:VM.gbas";
                                                                      local1_b = func14_StackPopNumber(param2_vm);
                                                                      __debugInfo = "471:VM.gbas";
                                                                      local1_A = func14_StackPopNumber(param2_vm);
                                                                      __debugInfo = "472:VM.gbas";
                                                                      func15_StackPushString(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_A, local1_b, local1_C).values[tmpPositionCache]);
                                                                      __debugInfo = "471:VM.gbas"
                                                                    }else {
                                                                      if(local16___SelectHelper8_ == 3 ? 1 : 0) {
                                                                        var local1_D = 0, local1_C = 0, local1_b = 0, local1_A = 0;
                                                                        __debugInfo = "474:VM.gbas";
                                                                        local1_D = func14_StackPopNumber(param2_vm);
                                                                        __debugInfo = "474:VM.gbas";
                                                                        local1_C = func14_StackPopNumber(param2_vm);
                                                                        __debugInfo = "474:VM.gbas";
                                                                        local1_b = func14_StackPopNumber(param2_vm);
                                                                        __debugInfo = "474:VM.gbas";
                                                                        local1_A = func14_StackPopNumber(param2_vm);
                                                                        __debugInfo = "475:VM.gbas";
                                                                        func15_StackPushString(param2_vm, param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr7_Arr_Str.arrAccess(local1_A, local1_b, local1_C, local1_D).values[tmpPositionCache]);
                                                                        __debugInfo = "474:VM.gbas"
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                                __debugInfo = "463:VM.gbas";
                                                                __debugInfo = "463:VM.gbas"
                                                              }else {
                                                                if(param2_vm.attr3_Var.arrAccess(local3_Ref).values[tmpPositionCache].attr3_Typ == -1 ? 1 : 0) {
                                                                }
                                                              }
                                                            }
                                                            __debugInfo = "480:VM.gbas"
                                                          }
                                                          __debugInfo = "481:VM.gbas";
                                                          local3_Ref = 0;
                                                          __debugInfo = "481:VM.gbas"
                                                        }else {
                                                          if(local16___SelectHelper4_ == CAST2INT(const10_OPGETARRAY) ? 1 : 0) {
                                                          }else {
                                                            if(local16___SelectHelper4_ == CAST2INT(const11_OPPUSHARRAY) ? 1 : 0) {
                                                              __debugInfo = "485:VM.gbas";
                                                              func15_StackPushNumber(param2_vm, CAST2FLOAT(local3_Ref));
                                                              __debugInfo = "486:VM.gbas";
                                                              param2_vm.attr5_Stack.arrAccess(-1).values[tmpPositionCache].attr7_IsArray = 1;
                                                              __debugInfo = "485:VM.gbas"
                                                            }else {
                                                              if((local16___SelectHelper4_ >= CAST2INT(const10_OPDIMARRAY) ? 1 : 0) && (local16___SelectHelper4_ <= CAST2INT(const12_OPREDIMARRAY) ? 1 : 0) ? 1 : 0) {
                                                                var local2_Re = 0, local2_ID = 0;
                                                                __debugInfo = "488:VM.gbas";
                                                                local2_Re = 0;
                                                                __debugInfo = "489:VM.gbas";
                                                                if(CAST2FLOAT(local2_Op.attr2_ID) == const12_OPREDIMARRAY ? 1 : 0) {
                                                                  __debugInfo = "489:VM.gbas";
                                                                  local2_Re = 1;
                                                                  __debugInfo = "489:VM.gbas"
                                                                }
                                                                __debugInfo = "490:VM.gbas";
                                                                local2_ID = func14_StackPopNumber(param2_vm);
                                                                __debugInfo = "491:VM.gbas";
                                                                param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_IsArray = 1;
                                                                __debugInfo = "492:VM.gbas";
                                                                param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr9_Dimension = CAST2INT(local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache]);
                                                                __debugInfo = "552:VM.gbas";
                                                                if(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Typ == 1 ? 1 : 0) {
                                                                  __debugInfo = "494:VM.gbas";
                                                                  var local16___SelectHelper9_ = 0;
                                                                  __debugInfo = "494:VM.gbas";
                                                                  local16___SelectHelper9_ = local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache];
                                                                  __debugInfo = "522:VM.gbas";
                                                                  if(local16___SelectHelper9_ == 0 ? 1 : 0) {
                                                                    __debugInfo = "501:VM.gbas";
                                                                    if(local2_Re) {
                                                                      __debugInfo = "497:VM.gbas";
                                                                      REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm)], "");
                                                                      __debugInfo = "497:VM.gbas"
                                                                    }else {
                                                                      __debugInfo = "499:VM.gbas";
                                                                      DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm)], "");
                                                                      __debugInfo = "499:VM.gbas"
                                                                    }
                                                                    __debugInfo = "501:VM.gbas"
                                                                  }else {
                                                                    if(local16___SelectHelper9_ == 1 ? 1 : 0) {
                                                                      __debugInfo = "507:VM.gbas";
                                                                      if(local2_Re) {
                                                                        __debugInfo = "503:VM.gbas";
                                                                        REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], "");
                                                                        __debugInfo = "503:VM.gbas"
                                                                      }else {
                                                                        __debugInfo = "505:VM.gbas";
                                                                        DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], "");
                                                                        __debugInfo = "505:VM.gbas"
                                                                      }
                                                                      __debugInfo = "507:VM.gbas"
                                                                    }else {
                                                                      if(local16___SelectHelper9_ == 2 ? 1 : 0) {
                                                                        __debugInfo = "513:VM.gbas";
                                                                        if(local2_Re) {
                                                                          __debugInfo = "509:VM.gbas";
                                                                          REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], "");
                                                                          __debugInfo = "509:VM.gbas"
                                                                        }else {
                                                                          __debugInfo = "511:VM.gbas";
                                                                          DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], "");
                                                                          __debugInfo = "511:VM.gbas"
                                                                        }
                                                                        __debugInfo = "513:VM.gbas"
                                                                      }else {
                                                                        if(local16___SelectHelper9_ == 3 ? 1 : 0) {
                                                                          __debugInfo = "519:VM.gbas";
                                                                          if(local2_Re) {
                                                                            __debugInfo = "515:VM.gbas";
                                                                            REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], "");
                                                                            __debugInfo = "515:VM.gbas"
                                                                          }else {
                                                                            __debugInfo = "517:VM.gbas";
                                                                            DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr7_Arr_Str), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], "");
                                                                            __debugInfo = "517:VM.gbas"
                                                                          }
                                                                          __debugInfo = "519:VM.gbas"
                                                                        }else {
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                  __debugInfo = "494:VM.gbas";
                                                                  __debugInfo = "494:VM.gbas"
                                                                }else {
                                                                  if(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Typ == 0 ? 1 : 0) {
                                                                    __debugInfo = "523:VM.gbas";
                                                                    var local17___SelectHelper10_ = 0;
                                                                    __debugInfo = "523:VM.gbas";
                                                                    local17___SelectHelper10_ = local2_Op.attr3_Par.arrAccess(0).values[tmpPositionCache];
                                                                    __debugInfo = "551:VM.gbas";
                                                                    if(local17___SelectHelper10_ == 0 ? 1 : 0) {
                                                                      __debugInfo = "530:VM.gbas";
                                                                      if(local2_Re) {
                                                                        __debugInfo = "526:VM.gbas";
                                                                        REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm)], 0);
                                                                        __debugInfo = "526:VM.gbas"
                                                                      }else {
                                                                        __debugInfo = "528:VM.gbas";
                                                                        DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm)], 0);
                                                                        __debugInfo = "528:VM.gbas"
                                                                      }
                                                                      __debugInfo = "530:VM.gbas"
                                                                    }else {
                                                                      if(local17___SelectHelper10_ == 1 ? 1 : 0) {
                                                                        __debugInfo = "536:VM.gbas";
                                                                        if(local2_Re) {
                                                                          __debugInfo = "532:VM.gbas";
                                                                          REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], 0);
                                                                          __debugInfo = "532:VM.gbas"
                                                                        }else {
                                                                          __debugInfo = "534:VM.gbas";
                                                                          DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], 0);
                                                                          __debugInfo = "534:VM.gbas"
                                                                        }
                                                                        __debugInfo = "536:VM.gbas"
                                                                      }else {
                                                                        if(local17___SelectHelper10_ == 2 ? 1 : 0) {
                                                                          __debugInfo = "542:VM.gbas";
                                                                          if(local2_Re) {
                                                                            __debugInfo = "538:VM.gbas";
                                                                            REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], 0);
                                                                            __debugInfo = "538:VM.gbas"
                                                                          }else {
                                                                            __debugInfo = "540:VM.gbas";
                                                                            DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], 0);
                                                                            __debugInfo = "540:VM.gbas"
                                                                          }
                                                                          __debugInfo = "542:VM.gbas"
                                                                        }else {
                                                                          if(local17___SelectHelper10_ == 3 ? 1 : 0) {
                                                                            __debugInfo = "548:VM.gbas";
                                                                            if(local2_Re) {
                                                                              __debugInfo = "544:VM.gbas";
                                                                              REDIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], 0);
                                                                              __debugInfo = "544:VM.gbas"
                                                                            }else {
                                                                              __debugInfo = "546:VM.gbas";
                                                                              DIM(unref(param2_vm.attr3_Var.arrAccess(local2_ID).values[tmpPositionCache].attr3_Arr), [func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm), func14_StackPopNumber(param2_vm)], 0);
                                                                              __debugInfo = "546:VM.gbas"
                                                                            }
                                                                            __debugInfo = "548:VM.gbas"
                                                                          }else {
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                    __debugInfo = "523:VM.gbas";
                                                                    __debugInfo = "523:VM.gbas"
                                                                  }
                                                                }
                                                                __debugInfo = "488:VM.gbas"
                                                              }else {
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      __debugInfo = "260:VM.gbas";
      __debugInfo = "254:VM.gbas"
    }
    __debugInfo = "557:VM.gbas";
    return 0;
    __debugInfo = "249:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func9_StackPush(param2_vm, param11_StackMember) {
  stackPush("function: StackPush", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    param11_StackMember = unref(param11_StackMember);
    __debugInfo = "558:VM.gbas";
    DIMPUSH(param2_vm.attr5_Stack, param11_StackMember);
    __debugInfo = "560:VM.gbas";
    return 0;
    __debugInfo = "558:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_StackPop(param2_vm) {
  stackPush("function: StackPop", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    var local11_StackMember = new type12_TStackMember;
    __debugInfo = "565:VM.gbas";
    if(LEN(param2_vm.attr5_Stack) == 0 ? 1 : 0) {
      __debugInfo = "562:VM.gbas";
      func11_OutputError("Stack is empty at OpCode: " + global9_CurrentOP.attr8_Text_Str);
      __debugInfo = "563:VM.gbas";
      func17_Debug_OutputStack(param2_vm);
      __debugInfo = "562:VM.gbas"
    }
    __debugInfo = "567:VM.gbas";
    local11_StackMember = param2_vm.attr5_Stack.arrAccess(-1).values[tmpPositionCache].clone();
    __debugInfo = "568:VM.gbas";
    DIMDEL(param2_vm.attr5_Stack, -1);
    __debugInfo = "570:VM.gbas";
    return tryClone(unref(local11_StackMember));
    __debugInfo = "572:VM.gbas";
    return tryClone(unref(new type12_TStackMember));
    __debugInfo = "565:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func15_StackPushString(param2_vm, param8_Text_Str) {
  stackPush("function: StackPushString", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    param8_Text_Str = unref(param8_Text_Str);
    var local11_StackMember = new type12_TStackMember;
    __debugInfo = "575:VM.gbas";
    local11_StackMember.attr7_Par_Str = param8_Text_Str;
    __debugInfo = "576:VM.gbas";
    local11_StackMember.attr3_Typ = CAST2INT(const7_ELEMSTR);
    __debugInfo = "577:VM.gbas";
    func9_StackPush(param2_vm, local11_StackMember);
    __debugInfo = "580:VM.gbas";
    return 0;
    __debugInfo = "575:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func18_StackPopString_Str(param2_vm) {
  stackPush("function: StackPopString_Str", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    var local8_Text_Str = "", local11_StackMember = new type12_TStackMember;
    __debugInfo = "583:VM.gbas";
    local11_StackMember = func8_StackPop(param2_vm).clone();
    __debugInfo = "589:VM.gbas";
    if(CAST2FLOAT(local11_StackMember.attr3_Typ) == const7_ELEMNUM ? 1 : 0) {
      __debugInfo = "585:VM.gbas";
      local8_Text_Str = CAST2STRING(local11_StackMember.attr3_Par);
      __debugInfo = "585:VM.gbas"
    }else {
      __debugInfo = "587:VM.gbas";
      local8_Text_Str = local11_StackMember.attr7_Par_Str;
      __debugInfo = "587:VM.gbas"
    }
    __debugInfo = "590:VM.gbas";
    return tryClone(unref(local8_Text_Str));
    __debugInfo = "592:VM.gbas";
    return"";
    __debugInfo = "583:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func15_StackPushNumber(param2_vm, param3_val) {
  stackPush("function: StackPushNumber", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    param3_val = unref(param3_val);
    var local11_StackMember = new type12_TStackMember;
    __debugInfo = "595:VM.gbas";
    local11_StackMember.attr3_Par = param3_val;
    __debugInfo = "597:VM.gbas";
    local11_StackMember.attr3_Typ = CAST2INT(const7_ELEMNUM);
    __debugInfo = "598:VM.gbas";
    func9_StackPush(param2_vm, local11_StackMember);
    __debugInfo = "601:VM.gbas";
    return 0;
    __debugInfo = "595:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func14_StackPopNumber(param2_vm) {
  stackPush("function: StackPopNumber", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    var local5_Value = 0, local11_StackMember = new type12_TStackMember;
    __debugInfo = "604:VM.gbas";
    local11_StackMember = func8_StackPop(param2_vm).clone();
    __debugInfo = "610:VM.gbas";
    if(CAST2FLOAT(local11_StackMember.attr3_Typ) == const7_ELEMNUM ? 1 : 0) {
      __debugInfo = "606:VM.gbas";
      local5_Value = local11_StackMember.attr3_Par;
      __debugInfo = "606:VM.gbas"
    }else {
      __debugInfo = "608:VM.gbas";
      local5_Value = CAST2FLOAT(local11_StackMember.attr7_Par_Str);
      __debugInfo = "608:VM.gbas"
    }
    __debugInfo = "611:VM.gbas";
    return tryClone(unref(local5_Value));
    __debugInfo = "613:VM.gbas";
    return 0;
    __debugInfo = "604:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func8_IsValue2(param8_Text_Str) {
  stackPush("function: IsValue2", __debugInfo);
  try {
    param8_Text_Str = unref(param8_Text_Str);
    var local1_i = 0;
    __debugInfo = "672:VM.gbas";
    if(LEN(param8_Text_Str) == 0 ? 1 : 0) {
      __debugInfo = "672:VM.gbas";
      return 0;
      __debugInfo = "672:VM.gbas"
    }
    __debugInfo = "680:VM.gbas";
    for(local1_i = 0;forCheck(local1_i, CAST2FLOAT(LEN(param8_Text_Str) - 1), 1);local1_i += 1) {
      var local1_a = 0;
      __debugInfo = "674:VM.gbas";
      local1_a = CAST2FLOAT(ASC(MID_Str(unref(param8_Text_Str), unref(CAST2INT(local1_i)), 1), 0));
      __debugInfo = "679:VM.gbas";
      if((((local1_a >= 48 ? 1 : 0) && (local1_a <= 57 ? 1 : 0) ? 1 : 0) || (local1_a == 46 ? 1 : 0) ? 1 : 0) || (local1_a == 45 ? 1 : 0) ? 1 : 0) {
      }else {
        __debugInfo = "677:VM.gbas";
        return 0;
        __debugInfo = "677:VM.gbas"
      }
      __debugInfo = "674:VM.gbas"
    }
    __debugInfo = "680:VM.gbas";
    return tryClone(1);
    __debugInfo = "682:VM.gbas";
    return 0;
    __debugInfo = "672:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func17_Debug_OutputStack(param2_vm) {
  stackPush("function: Debug_OutputStack", __debugInfo);
  try {
    param2_vm = unref(param2_vm);
    var local1_i = 0;
    __debugInfo = "684:VM.gbas";
    DEBUG("\nStack Content:\n");
    __debugInfo = "700:VM.gbas";
    var forEachSaver6588 = param2_vm.attr5_Stack;
    for(var forEachCounter6588 = 0;forEachCounter6588 < forEachSaver6588.values.length;forEachCounter6588++) {
      var local1_S = forEachSaver6588.values[forEachCounter6588];
      __debugInfo = "698:VM.gbas";
      if(local1_i > 0 ? 1 : 0) {
        var local7_Out_Str = "";
        __debugInfo = "696:VM.gbas";
        if(CAST2FLOAT(local1_S.attr3_Typ) == const7_ELEMNUM ? 1 : 0) {
          __debugInfo = "690:VM.gbas";
          local7_Out_Str = "Number: " + CAST2STRING(local1_S.attr3_Par);
          __debugInfo = "690:VM.gbas"
        }else {
          if(CAST2FLOAT(local1_S.attr3_Typ) == const7_ELEMSTR ? 1 : 0) {
            __debugInfo = "692:VM.gbas";
            local7_Out_Str = "String: " + local1_S.attr7_Par_Str;
            __debugInfo = "692:VM.gbas"
          }else {
            __debugInfo = "694:VM.gbas";
            local7_Out_Str = "Unknown: " + local1_S.attr7_Par_Str + " " + CAST2STRING(local1_S.attr3_Par);
            __debugInfo = "694:VM.gbas"
          }
        }
        __debugInfo = "696:VM.gbas";
        DEBUG(CAST2STRING(local1_i) + ":\t " + local7_Out_Str + " Array: " + CAST2STRING(local1_S.attr7_IsArray) + "\n");
        __debugInfo = "696:VM.gbas"
      }
      __debugInfo = "698:VM.gbas";
      local1_i = local1_i + 1;
      __debugInfo = "698:VM.gbas";
      forEachSaver6588.values[forEachCounter6588] = local1_S
    }
    __debugInfo = "700:VM.gbas";
    DEBUG("Variable Stack:\n");
    __debugInfo = "724:VM.gbas";
    var forEachSaver6694 = param2_vm.attr3_Var;
    for(var forEachCounter6694 = 0;forEachCounter6694 < forEachSaver6694.values.length;forEachCounter6694++) {
      var local1_V = forEachSaver6694.values[forEachCounter6694];
      var local7_Out_Str = "";
      __debugInfo = "710:VM.gbas";
      if(local1_V.attr3_Typ == 0 ? 1 : 0) {
        __debugInfo = "704:VM.gbas";
        local7_Out_Str = local7_Out_Str + "Number: " + CAST2STRING(local1_V.attr3_Par);
        __debugInfo = "704:VM.gbas"
      }else {
        if(local1_V.attr3_Typ == 1 ? 1 : 0) {
          __debugInfo = "706:VM.gbas";
          local7_Out_Str = local7_Out_Str + "String: " + local1_V.attr7_Par_Str;
          __debugInfo = "706:VM.gbas"
        }else {
          __debugInfo = "708:VM.gbas";
          local7_Out_Str = local7_Out_Str + "Unknown: ";
          __debugInfo = "708:VM.gbas"
        }
      }
      __debugInfo = "722:VM.gbas";
      if(local1_V.attr7_IsArray) {
        __debugInfo = "711:VM.gbas";
        local7_Out_Str = local7_Out_Str + " Array";
        __debugInfo = "721:VM.gbas";
        if(local1_V.attr3_Typ == 0 ? 1 : 0) {
          __debugInfo = "716:VM.gbas";
          var forEachSaver6671 = local1_V.attr3_Arr;
          for(var forEachCounter6671 = 0;forEachCounter6671 < forEachSaver6671.values.length;forEachCounter6671++) {
            var local1_A = forEachSaver6671.values[forEachCounter6671];
            __debugInfo = "714:VM.gbas";
            local7_Out_Str = local7_Out_Str + ", " + CAST2STRING(local1_A);
            __debugInfo = "714:VM.gbas";
            forEachSaver6671.values[forEachCounter6671] = local1_A
          }
          __debugInfo = "716:VM.gbas"
        }else {
          __debugInfo = "720:VM.gbas";
          var forEachSaver6687 = local1_V.attr7_Arr_Str;
          for(var forEachCounter6687 = 0;forEachCounter6687 < forEachSaver6687.values.length;forEachCounter6687++) {
            var local1_A = forEachSaver6687.values[forEachCounter6687];
            __debugInfo = "718:VM.gbas";
            local7_Out_Str = local7_Out_Str + ", " + local1_A;
            __debugInfo = "718:VM.gbas";
            forEachSaver6687.values[forEachCounter6687] = local1_A
          }
          __debugInfo = "720:VM.gbas"
        }
        __debugInfo = "711:VM.gbas"
      }
      __debugInfo = "722:VM.gbas";
      DEBUG(local7_Out_Str + "\n");
      __debugInfo = "710:VM.gbas";
      forEachSaver6694.values[forEachCounter6694] = local1_V
    }
    __debugInfo = "725:VM.gbas";
    DEBUG("\nEnd Stack Content\n");
    __debugInfo = "727:VM.gbas";
    return 0;
    __debugInfo = "684:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function func11_OutputError(param7_Err_Str) {
  stackPush("function: OutputError", __debugInfo);
  try {
    param7_Err_Str = unref(param7_Err_Str);
    __debugInfo = "729:VM.gbas";
    DEBUG("ERROR: " + param7_Err_Str + "\n");
    __debugInfo = "731:VM.gbas";
    return 0;
    __debugInfo = "729:VM.gbas"
  }catch(ex) {
    if(isKnownException(ex)) {
      throw ex;
    }
    alert(formatError(ex));
    END()
  }finally {
    stackPop()
  }
}
function type9_TFunction() {
  var selfVar = this;
  this.attr8_Name_Str = "";
  this.attr5_isKey = 0;
  this.attr8_ParCount = 0;
  this.attr5_IsSub = 0;
  this.attr10_IsUserFunc = 0;
  this.attr18_IsOptionalFunction = 0;
  this.attr10_OpParCount = 0;
  this.attr13_Optionals_Str = new GLBArray;
  this.attr2_id = 0;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type9_TFunction'")
  };
  this.clone = function() {
    var other = new type9_TFunction;
    other.attr8_Name_Str = tryClone(this.attr8_Name_Str);
    other.attr5_isKey = tryClone(this.attr5_isKey);
    other.attr8_ParCount = tryClone(this.attr8_ParCount);
    other.attr5_IsSub = tryClone(this.attr5_IsSub);
    other.attr10_IsUserFunc = tryClone(this.attr10_IsUserFunc);
    other.attr18_IsOptionalFunction = tryClone(this.attr18_IsOptionalFunction);
    other.attr10_OpParCount = tryClone(this.attr10_OpParCount);
    other.attr13_Optionals_Str = tryClone(this.attr13_Optionals_Str);
    other.attr2_id = tryClone(this.attr2_id);
    return other
  };
  return this
}
function type4_TVar() {
  var selfVar = this;
  this.attr8_Name_Str = "";
  this.attr3_Typ = 0;
  this.attr2_id = 0;
  this.attr7_IsArray = 0;
  this.attr8_IsGlobal = 0;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type4_TVar'")
  };
  this.clone = function() {
    var other = new type4_TVar;
    other.attr8_Name_Str = tryClone(this.attr8_Name_Str);
    other.attr3_Typ = tryClone(this.attr3_Typ);
    other.attr2_id = tryClone(this.attr2_id);
    other.attr7_IsArray = tryClone(this.attr7_IsArray);
    other.attr8_IsGlobal = tryClone(this.attr8_IsGlobal);
    return other
  };
  return this
}
function type16_TUnknownFunction() {
  var selfVar = this;
  this.attr8_Name_Str = "";
  this.attr3_Par = 0;
  this.attr4_Line = 0;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type16_TUnknownFunction'")
  };
  this.clone = function() {
    var other = new type16_TUnknownFunction;
    other.attr8_Name_Str = tryClone(this.attr8_Name_Str);
    other.attr3_Par = tryClone(this.attr3_Par);
    other.attr4_Line = tryClone(this.attr4_Line);
    return other
  };
  return this
}
function type3_TVM() {
  var selfVar = this;
  this.attr6_OpCode = new GLBArray;
  this.attr8_Code_Str = "";
  this.attr5_Stack = new GLBArray;
  this.attr3_Var = new GLBArray;
  this.attr5_Scope = new GLBArray;
  this.attr5_Label = new GLBArray;
  this.attr6_Frames = new GLBArray;
  this.attr5_Label = DIM(new GLBArray, [16], [0]);
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type3_TVM'")
  };
  this.clone = function() {
    var other = new type3_TVM;
    other.attr6_OpCode = tryClone(this.attr6_OpCode);
    other.attr8_Code_Str = tryClone(this.attr8_Code_Str);
    other.attr5_Stack = tryClone(this.attr5_Stack);
    other.attr3_Var = tryClone(this.attr3_Var);
    other.attr5_Scope = tryClone(this.attr5_Scope);
    other.attr5_Label = tryClone(this.attr5_Label);
    other.attr6_Frames = tryClone(this.attr6_Frames);
    return other
  };
  return this
}
function type7_TOpCode() {
  var selfVar = this;
  this.attr2_ID = 0;
  this.attr7_Par_Str = "";
  this.attr3_Par = new GLBArray;
  this.attr8_Text_Str = "";
  this.attr2_ID = -1;
  this.attr3_Par = DIM(new GLBArray, [2], [0]);
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type7_TOpCode'")
  };
  this.clone = function() {
    var other = new type7_TOpCode;
    other.attr2_ID = tryClone(this.attr2_ID);
    other.attr7_Par_Str = tryClone(this.attr7_Par_Str);
    other.attr3_Par = tryClone(this.attr3_Par);
    other.attr8_Text_Str = tryClone(this.attr8_Text_Str);
    return other
  };
  return this
}
function type12_TStackMember() {
  var selfVar = this;
  this.attr3_Typ = 0;
  this.attr7_Par_Str = "";
  this.attr3_Par = 0;
  this.attr7_IsArray = 0;
  this.attr3_Typ = -1;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type12_TStackMember'")
  };
  this.clone = function() {
    var other = new type12_TStackMember;
    other.attr3_Typ = tryClone(this.attr3_Typ);
    other.attr7_Par_Str = tryClone(this.attr7_Par_Str);
    other.attr3_Par = tryClone(this.attr3_Par);
    other.attr7_IsArray = tryClone(this.attr7_IsArray);
    return other
  };
  return this
}
function type11_TStackFrame() {
  var selfVar = this;
  this.attr3_Ref = 0;
  this.attr7_Backjmp = 0;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type11_TStackFrame'")
  };
  this.clone = function() {
    var other = new type11_TStackFrame;
    other.attr3_Ref = tryClone(this.attr3_Ref);
    other.attr7_Backjmp = tryClone(this.attr7_Backjmp);
    return other
  };
  return this
}
function type9_TVariable() {
  var selfVar = this;
  this.attr3_Typ = 0;
  this.attr7_IsArray = 0;
  this.attr7_Par_Str = "";
  this.attr3_Par = 0;
  this.attr7_Arr_Str = new GLBArray;
  this.attr3_Arr = new GLBArray;
  this.attr9_Dimension = 0;
  this.attr3_Typ = 0;
  this.attr7_IsArray = 0;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type9_TVariable'")
  };
  this.clone = function() {
    var other = new type9_TVariable;
    other.attr3_Typ = tryClone(this.attr3_Typ);
    other.attr7_IsArray = tryClone(this.attr7_IsArray);
    other.attr7_Par_Str = tryClone(this.attr7_Par_Str);
    other.attr3_Par = tryClone(this.attr3_Par);
    other.attr7_Arr_Str = tryClone(this.attr7_Arr_Str);
    other.attr3_Arr = tryClone(this.attr3_Arr);
    other.attr9_Dimension = tryClone(this.attr9_Dimension);
    return other
  };
  return this
}
function type4_TDef() {
  var selfVar = this;
  this.attr2_ID = 0;
  this.attr8_Name_Str = "";
  this.attr8_ParCount = 0;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type4_TDef'")
  };
  this.clone = function() {
    var other = new type4_TDef;
    other.attr2_ID = tryClone(this.attr2_ID);
    other.attr8_Name_Str = tryClone(this.attr8_Name_Str);
    other.attr8_ParCount = tryClone(this.attr8_ParCount);
    return other
  };
  return this
}
function type7_TObject() {
  var selfVar = this;
  this.ToString_Str = function() {
    return method13_type7_TObject_12_ToString_Str ? method13_type7_TObject_12_ToString_Str(selfVar) : throwError("Cannot find method implementation of method 'ToString_Str' of type 'type7_TObject'")
  };
  this.clone = function() {
    var other = new type7_TObject;
    return other
  };
  return this
}
if(viewMode == "console") {
  window.onload = function(e) {
    updateConsole()
  }
}
var waitload = 0;
var exec = false;
var tmpPositionCache = -1;
var args = new Array(64);
var consoleOutput;
var consoleSize = 1E4;
var currentDir;
var mainCall = false;
function STDOUT(text) {
  if(consoleOutput == undefined) {
    consoleOutput = document.getElementById("console")
  }
  if(consoleOutput) {
    if(LEN(consoleOutput.value) + LEN(text) > consoleSize) {
    }
    consoleOutput.value = consoleOutput.value + text;
    consoleOutput.scrollTop = consoleOutput.scrollHeight
  }else {
    console.log(text)
  }
}
function STDERR(text) {
  STDOUT("Error: " + text)
}
function STDCOLOR(back, fore) {
}
function DEBUG(text) {
  console.log(text)
}
function END() {
  window.onbeforeunload();
  throw"endprog";
}
function GETTIMERALL() {
  return(new Date).getTime() - startTime
}
function PLATFORMINFO_Str(info) {
  switch(info) {
    case "":
      return"HTML5";
    case "DOCUMENTS":
    ;
    case "APPDATA":
    ;
    case "TEMP":
      return"/";
    case "ID":
      return"" + uniqueId;
    case "DEVICE":
      return"DESKTOP";
    case "BATTERY":
      var bat = navigator.battery || window.navigator.battery || navigator.battery || navigator.mozBattery || navigator.webkitBattery;
      return bat ? bat.level * 100 : 100;
    case "TIME":
      var d = new Date;
      var f = function(val) {
        val = CAST2STRING(val);
        if(LEN(val) == 1) {
          val = "0" + val
        }
        return val
      };
      return f(d.getFullYear()) + "-" + f(d.getMonth()) + "-" + f(d.getDate()) + " " + f(d.getHours()) + ":" + f(d.getMinutes()) + ":" + f(d.getSeconds());
    case "COMPILED":
      return rot13(compileTime);
    case "VERSION":
      return rot13(userDefVersion);
    case "HOSTID":
      return rot13(hostId);
    case "LOCALE":
      return navigator.language || window.navigator.userLanguage || window.navigator.language;
    default:
      if(LEN(info) > LEN("GLEXT:") && MID_Str(info, 0, LEN("GLEXT:")) == "GLEXT:") {
        return"0"
      }else {
        return""
      }
  }
}
function GETLASTERROR_Str() {
  return"0 Successfull"
}
function SHELLCMD(cmd, wait, show, rv) {
  try {
    rv[0] = CAST2FLOAT(eval(cmd))
  }catch(ex) {
    rv[0] = 0;
    rv[0] = 0;
    throwError("SHELLCMD raised ab error.")
  }
}
function SHELLEND(cmd) {
  try {
    eval(cmd)
  }catch(ex) {
    throwError("SHELLEND raised an error")
  }
  END()
}
function CALLBYNAME(name) {
  var ret = 1;
  return eval("if (window['" + name + "']) window." + name + "(); else ret = 0;")
}
var expectedErrors = ["endprog", "GLBERR"];
var callStack = [];
function StackFrame(name, info) {
  this.name = name;
  this.info = info
}
function stackPush(name, info) {
  callStack.push(new StackFrame(name, info))
}
function stackPop() {
  callStack.pop()
}
function stackTrace() {
  var output = "";
  for(var i = callStack.length - 1;i >= 0;i--) {
    output += "\tin '" + callStack[i].name + "' in file '" + MID_Str(callStack[i].info, INSTR(callStack[i].info, ":") + 1) + "' in line '" + MID_Str(callStack[i].info, 0, INSTR(callStack[i].info, ":")) + "'\n"
  }
  return output
}
function throwError(msg) {
  throw msg;
}
function formatError(msg) {
  msg = msg.message ? msg.message : msg.toString();
  if(debugMode) {
    msg = "Error:\n '" + msg + "' ";
    var info = __debugInfo;
    msg += "\nAppeared in line '" + MID_Str(info, 0, INSTR(info, ":")) + "' in file '" + MID_Str(info, INSTR(info, ":") + 1) + "' ";
    msg += "\n\n" + stackTrace()
  }
  return msg
}
function dumpArray(arr) {
  var acc = "";
  var start = false;
  for(var i = 0;i < arr.length;i++) {
    if(start) {
      acc += ", "
    }
    acc += "'" + arr[i] + "'";
    start = true
  }
  return"[" + acc + "]"
}
function forCheck(cur, to, step) {
  if(step > 0) {
    return cur <= to
  }else {
    if(step < 0) {
      return cur >= to
    }else {
      return true
    }
  }
}
function isKnownException(ex) {
  ex = ex.toString();
  for(var i = 0;i < expectedErrors.length;i++) {
    if(ex.indexOf(expectedErrors[i]) == 0) {
      return true
    }
  }
  return false
}
function unref(v) {
  if(v instanceof Array) {
    return v[0]
  }else {
    return v
  }
}
function ref(v) {
  if(v instanceof Array) {
    return v
  }else {
    return[v]
  }
}
function tryClone(o) {
  switch(typeof o) {
    case "undefined":
    ;
    case "function":
    ;
    case "string":
    ;
    case "boolean":
    ;
    case "number":
      break;
    default:
      if(o instanceof Array) {
        return[tryClone(o[0])]
      }else {
        return o.clone()
      }
  }
  return o
}
function updateConsole() {
  try {
    if(!mainCall) {
      main();
      mainCall = true
    }
    if(!waitload && !exec) {
      exec = true;
      if(typeof GLB_ON_INIT == "function") {
        GLB_ON_INIT()
      }
    }else {
      window.requestAnimFrame(updateConsole, 100)
    }
  }catch(ex) {
    if(ex != "endprog") {
      alert(formatError(ex))
    }
  }
}
var dataLabel, dataPosition;
function RESTORE(label) {
  dataLabel = label;
  dataPosition = 0
}
function READ() {
  var d = dataLabel[dataPosition];
  dataPosition++;
  return d
}
function GLBArray() {
  this.values = new Array;
  this.dimensions = [0];
  this.defval = 0;
  return this
}
GLBArray.prototype.clone = function() {
  var other = new GLBArray;
  other.values = this.values.slice(0);
  other.dimensions = this.dimensions.slice(0);
  other.defval = this.defval;
  if(this.values != undefined && this.values.dimensions != undefined) {
    for(var i = 0;i < this.values.length;i++) {
      other.values[i] = tryClone(this.values[i])
    }
  }
  return other
};
GLBArray.prototype.arrAccess = function() {
  tmpPositionCache = 0;
  for(var i = arguments.length - 1;i >= 0;i--) {
    if(i >= this.dimensions.length) {
      throwError("Wrong dimension count '" + (arguments.length - 1) + "' expected '" + this.dimensions.length + "'")
    }
    var position = CAST2INT(arguments[i]);
    if(position < 0) {
      position = this.dimensions[i] + position
    }
    if(position < 0 || position >= this.dimensions[i]) {
      throwError("Array index out of bounds access, position: " + dumpArray(arguments))
    }
    args[i] = position
  }
  switch(arguments.length) {
    case 1:
      tmpPositionCache = args[0];
      break;
    case 2:
      tmpPositionCache = args[0] + args[1] * this.dimensions[0];
      break;
    case 3:
      tmpPositionCache = args[0] + args[1] * this.dimensions[0] + args[2] * this.dimensions[0] * this.dimensions[1];
      break;
      tmpPositionCache = args[0] + args[1] * this.dimensions[0] + args[2] * this.dimensions[0] * this.dimensions[1] + args[3] * this.dimensions[0] * this.dimensions[1] * this.dimensions[2];
      break;
    default:
      var mul = this.values.length / this.dimensions[arguments.length - 1];
      for(var i = arguments.length - 1;i >= 0;i--) {
        tmpPositionCache += args[i] * mul;
        mul /= this.dimensions[i - 1]
      }
  }
  return this
};
function realArrSize(dims) {
  var realSize = 1;
  for(d in dims) {
    dims[d] = CAST2INT(Math.round(dims[d]));
    realSize *= dims[d]
  }
  return realSize
}
function DIM(vari, dims, value) {
  vari.values = new Array(realArrSize(dims));
  vari.dimensions = dims;
  vari.defval = value;
  for(var i = 0;i < vari.values.length;i++) {
    vari.values[i] = tryClone(value)
  }
  return vari
}
function REDIM(vari, dims, value) {
  var oldLength = vari.values.length;
  vari.dimensions = dims;
  vari.defval = value;
  vari.values.length = realArrSize(dims);
  for(i = 0;i < vari.values.length;i++) {
    if(i >= oldLength) {
      vari.values[i] = tryClone(vari.defval)
    }
  }
  return vari
}
function BOUNDS(array, dimension) {
  return array.dimensions[dimension]
}
function DIMPUSH(array, value) {
  REDIM(array, [array.values.length + 1], array.defval);
  array.values[array.values.length - 1] = tryClone(value)
}
function DIMDEL(array, position) {
  array.values.splice(position, 1);
  array.dimensions[0]--
}
function DIMDATA(array, values) {
  array.values = values;
  array.dimensions = [values.length]
}
function LEN(vari) {
  switch(typeof vari) {
    case "string":
      return vari.length;
    case "number":
      return CAST2STRING(vari).length;
    default:
      if(vari.constructor === GLBArray) {
        return BOUNDS(vari, 0)
      }else {
        throwError("Cannot get the length of: " + typeof vari + ", " + vari.constructor)
      }
  }
}
function SEEDRND(seed) {
  rand = new RandomNumberGenerator(seed)
}
var rand = null;
function RND(range) {
  if(range == 0) {
    return 0
  }
  if(range < 0) {
    range = -range
  }
  if(!rand) {
    rand = new RandomNumberGenerator(GETTIMERALL())
  }
  return(range + 1) * rand.next()
}
function MIN(a, b) {
  if(a < b) {
    return a
  }else {
    return b
  }
}
function MAX(a, b) {
  if(a > b) {
    return a
  }else {
    return b
  }
}
function ABS(a) {
  return Math.abs(a)
}
function SGN(a) {
  return a > 0 ? 1 : a < 0 ? -1 : 0
}
function SIN(a) {
  return Math.sin(deg2rad(a))
}
function COS(a) {
  return Math.cos(deg2rad(a))
}
function TAN(a) {
  return Math.tan(deg2rad(a))
}
function ACOS(a) {
  return Math.acos(deg2rad(a))
}
function ASIN(a) {
  return Math.asin(deg2rad(a))
}
function ASL(num, shift) {
  return num << shift
}
function ASR(num, shift) {
  return num >> shift
}
function ATAN(dy, dx) {
  return rad2deg(Math.atan2(dy, dx))
}
function bAND(a, b) {
  return a & b
}
function bOR(a, b) {
  return a | b
}
function bXOR(a, b) {
  return a ^ b
}
function bNOT(a) {
  return~a
}
function MOD(a, b) {
  return CAST2INT(a % b)
}
function FMOD(num, div) {
  return num % div
}
function FINDPATH(map, result, heu, startx, starty, endx, endy) {
  alert("TODO: findpath")
}
function LOGN(a) {
  return Math.log(a)
}
function POW(a, b) {
  return Math.pow(a, b)
}
function SQR(a) {
  return Math.sqrt(a)
}
function SWAP(a, b) {
  var tmp = a;
  a[0] = b[0];
  b[0] = tmp[0]
}
function SORTARRAY(array, cmp) {
  var cmpFunc;
  if(cmp == 0) {
    cmpFunc = function(a, b) {
      a = unref(a);
      b = unref(b);
      switch(typeof o) {
        case "undefined":
        ;
        case "function":
        ;
        case "string":
        ;
        case "boolean":
        ;
        case "number":
          return a < b ? -1 : a > b ? 1 : 0;
        default:
          throwError("TODO: Default sortarray with types!");
          return
      }
    }
  }else {
    cmpFunc = function(a, b) {
      return cmp([a], [b])
    }
  }
  array.values.sort(cmpFunc)
}
function deg2rad(val) {
  return val * (Math.PI / 180)
}
function rad2deg(val) {
  return val * (180 / Math.PI)
}
function CAST2INT(value) {
  if(value instanceof Array) {
    return[CAST2INT(value[0])]
  }else {
    switch(typeof value) {
      case "function":
        return 1;
      case "undefined":
        throwError("Cannot cast 'undefined'");
      case "number":
        if(value < 0) {
          return Math.ceil(value)
        }else {
          if(value > 0) {
            return Math.floor(value)
          }else {
            return 0
          }
        }
      ;
      case "string":
        if(isNaN(value) || value == "") {
          return 0
        }else {
          return parseInt(value)
        }
      ;
      case "boolean":
        return value ? 1 : 0;
      case "object":
        return CAST2INT(value.toString());
      default:
        throwError("Unknown type!")
    }
  }
}
function INTEGER(value) {
  return CAST2INT(value)
}
function CAST2FLOAT(value) {
  if(value instanceof Array) {
    return[CAST2FLOAT(value[0])]
  }else {
    switch(typeof value) {
      case "function":
        return 1;
      case "undefined":
        throwError("Cannot cast 'undefined'");
      case "number":
        return value;
      case "string":
        if(isNaN(value) || value == "") {
          return 0
        }else {
          return parseFloat(value)
        }
      ;
      case "boolean":
        return value ? 1 : 0;
      case "object":
        return CAST2FLOAT(value.toString());
      default:
        throwError("Unknown type!")
    }
  }
}
function STACKTRACE_Str() {
  return stackTrace()
}
function FORMAT_Str(numLetter, numKommas, Number) {
  var str = CAST2STRING(Number);
  var l = INSTR(str, ".");
  var r = REVINSTR(str, ".");
  for(var i = l;i < numLetter;i++) {
    str = " " + str
  }
  for(var i = r;i < numKommas;i++) {
    str = str + "0"
  }
  for(var i = numLetter;i < l;i++) {
    str = MID_Str(str, 1)
  }
  for(var i = numKommas;i < r;i++) {
    str = MID_Str(str, 0, LEN(str) - 1)
  }
  return str
}
function ENCRYPT_Str(code, text) {
  var add = 0;
  for(i = 0;i < LEN(code);i++) {
    add += ASC(code, i)
  }
  add = add % 16;
  var newText = "";
  for(i = 0;i < LEN(text);i++) {
    newText = newText + CHR_Str(ASC(text, i) + add)
  }
  return newText
}
function DECRYPT_Str(code, text) {
  var add = 0;
  for(i = 0;i < LEN(code);i++) {
    add += ASC(code, i)
  }
  add = add % 16;
  var newText = "";
  for(i = 0;i < LEN(text);i++) {
    newText = newText + CHR_Str(ASC(text, i) - add)
  }
  return newText
}
function LCASE_Str(str) {
  return str.toLowerCase()
}
function UCASE_Str(str) {
  return str.toUpperCase()
}
function MID_Str(str, start, count) {
  try {
    if(count == -1) {
      return str.substr(start)
    }else {
      return str.substr(start, count)
    }
  }catch(ex) {
    throwError("string error (MID$): '" + str + "' start: '" + start + "' count: '" + count + "'")
  }
}
function LEFT_Str(str, count) {
  try {
    return str.substr(0, count)
  }catch(ex) {
    throwError("string error (LEFT$): '" + str + "' count: '" + count + "'")
  }
}
function RIGHT_Str(str, count) {
  try {
    return str.substr(LEN(str) - count, count)
  }catch(ex) {
    throwError("string error (RIGHT$): '" + str + "' count: '" + count + "'")
  }
}
function CAST2STRING(value) {
  if(value instanceof Array) {
    return[CAST2STRING(value[0])]
  }else {
    switch(typeof value) {
      case "function":
        return"1";
      case "undefined":
        throwError("Cannot cast undefined to string");
      case "boolean":
        return value ? "1" : "0";
      case "number":
        return"" + value;
      case "string":
        return value;
      case "object":
        return value.toString();
      default:
        throwError("Unknown type")
    }
  }
}
function INSTR(str, text, start) {
  if(start == -1) {
    return str.indexOf(text)
  }else {
    return str.indexOf(text, start)
  }
}
function REVINSTR(str, text, start) {
  if(start == -1) {
    return str.lastIndexOf(text)
  }else {
    return str.lastIndexOf(text, start)
  }
}
function CHR_Str(character) {
  return String.fromCharCode(character)
}
function REPLACE_Str(text, from, to) {
  var i = 0;
  for(;;) {
    i = text.indexOf(from, i);
    if(i == -1) {
      return text
    }
    text = text.substring(0, i) + to + text.substring(i + from.length);
    i += to.length
  }
  return text
}
function TRIM_Str(text, repl) {
  return LTRIM_Str(RTRIM_Str(text, repl), repl)
}
function LTRIM_Str(text, repl) {
  for(i = 0;i < text.length;i++) {
    var c = text.charAt(i);
    if(repl.indexOf(c) == -1) {
      return text.substr(i)
    }
  }
  return""
}
function RTRIM_Str(text, repl) {
  for(i = text.length - 1;i >= 0;i--) {
    var c = text.charAt(i);
    if(repl.indexOf(c) == -1) {
      return text.substr(0, i + 1)
    }
  }
  return""
}
function ASC(text, index) {
  try {
    return text.charCodeAt(index)
  }catch(ex) {
    throwError("string error (ASC): '" + text + "' index: '" + index + "'")
  }
}
function SPLITSTR(text, array, split, dropEmpty) {
  try {
    var last = 0;
    REDIM(array, [0], array.defval);
    for(var i = 0;i <= text.length;i++) {
      var c = text.charAt(i);
      if(split.indexOf(c) != -1 || i == text.length) {
        var t = MID_Str(text, last, i - last);
        if(t != "" || !dropEmpty) {
          if(array.defval instanceof Array) {
            DIMPUSH(array, [t])
          }else {
            DIMPUSH(array, t)
          }
        }
        last = i + 1
      }
    }
    return LEN(split)
  }catch(ex) {
    throwError("string error (SPLITSTR): '" + str + "' split: '" + split + "' dropEmpty: " + dropEmpty)
  }
}
function URLENCODE_Str(url) {
  return encodeURI(url)
}
function URLDECODE_Str(url) {
  return decodeURI(url)
}
var channels = [];
function GENFILE() {
  for(var i = 0;i < channels.length;i++) {
    if(!channels[i]) {
      return i
    }
  }
  return channels.length
}
function rawpath(path, dir) {
  path = (TRIM_Str(dir.getFileSystem().getCurrentDir(), " ") + TRIM_Str(path, " ")).toLowerCase();
  var last = 0;
  var curDir = dir;
  for(var i = 0;i < path.length;i++) {
    switch(path.charAt(i)) {
      case "/":
        if(i > 0) {
          var name = path.substr(last, i - last);
          curDir = curDir.getSubDir(name);
          last = i + 1
        }else {
          last = 1
        }
        break;
      case ".":
        var nextSymbol = function() {
          i++;
          return i < path.length
        };
        if(!nextSymbol()) {
          break
        }
        if(path.charAt(i) == ".") {
          curDir = curDir.getParent();
          if(!nextSymbol()) {
            break
          }
          if(path.charAt(i) != "/") {
            throwError("Expecting '/'")
          }
          last = i + 1
        }else {
          if(path.charAt(i) == "/") {
            last = i + 1
          }
        }
        break
    }
  }
  return new FilePointer(path.substr(last, path.length - last), curDir)
}
function FilePointer(name, dir) {
  this.name = name;
  this.dir = dir
}
function VirtualFileSystem(text) {
  this.mainDir = new VirtualDirectory("", null, this);
  this.curDir = "";
  this.copyFile = function(from, to) {
    if(this.doesFileExist(form)) {
      var data = this.getFile(from).data;
      this.createFile(to, data)
    }
  };
  this.getCurrentDir = function() {
    return this.curDir
  };
  this.setCurrentDir = function(dir) {
    if(RIGHT_Str(dir, 1) != "/") {
      dir += "/"
    }
    this.curDir = dir
  };
  this.getFile = function(file) {
    var d = rawpath(file, this.mainDir);
    return d.dir.getFile(d.name)
  };
  this.getDir = function(dir) {
    var d = rawpath(dir, this.mainDir);
    return d.dir
  };
  this.doesFileExist = function(file) {
    try {
      var d = rawpath(file, this.mainDir);
      return d.dir.doesFileExist(d.name)
    }catch(ex) {
    }
    return false
  };
  this.doesDirExist = function(dir) {
    try {
      var d = rawpath(file, this.mainDir);
      return d.dir.doesDirExist(d.name)
    }catch(ex) {
    }
    return false
  };
  this.removeFile = function(file) {
    var d = rawpath(file, this.mainDir);
    d.dir.removeFile(d.name)
  };
  this.removeDir = function(path) {
    var d = rawpath(path, this.mainDir);
    d.dir.removePath(d.name)
  };
  this.createFile = function(file, data) {
    if(!this.doesFileExist(file)) {
      var d = rawpath(file, this.mainDir);
      return d.dir.createFile(d.name, data)
    }else {
      var f = this.getFile(file);
      f.data = data;
      return f
    }
  };
  this.createDir = function(dir) {
    if(!this.doesDirExist(dir)) {
      var d = rawpath(dir, this.mainDir);
      return d.dir.createDir(d.name)
    }else {
      return this.getDir(dir)
    }
  };
  this["cD"] = this.createDir;
  this["cF"] = this.createFile;
  this.getMainDir = function() {
    return this.mainDir
  };
  this.save = function() {
    return this.mainDir.save()
  };
  if(text != undefined) {
    window["fileSystem"] = this;
    eval(REPLACE_Str(text, "t.", "window.fileSystem."))
  }
}
function VirtualDirectory(name, parent, system) {
  this.name = name;
  this.parent = parent;
  this.subDirs = [];
  this.files = [];
  this.fileSystem = system;
  this.getList = function() {
    return this.subDirs.concat(this.files)
  };
  this.getFileSystem = function() {
    return this.fileSystem
  };
  this.doesDirExist = function(dir) {
    for(var i = 0;i < this.subDirs.length;i++) {
      if(this.subDirs[i].name == file) {
        return true
      }
    }
    return false
  };
  this.doesFileExist = function(file) {
    for(var i = 0;i < this.files.length;i++) {
      if(this.files[i].name == file) {
        return true
      }
    }
    return false
  };
  this.removeFile = function(file) {
    for(var i = 0;i < this.files.length;i++) {
      if(this.files[i].name == file) {
        this.files.splice(i, 1);
        return
      }
    }
    throwError("FileNotFound " + file)
  };
  this.removeDir = function(file) {
    for(var i = 0;i < this.subDirs.length;i++) {
      if(this.subDirs[i].name == file) {
        this.subDirs.splice(i, 1);
        return
      }
    }
    throwError("DirNotFound " + file)
  };
  this.createDir = function(name) {
    var d = new VirtualDirectory(name, this, this.fileSystem);
    this.subDirs.push(d);
    return d
  };
  this.createFile = function(name, data) {
    var f = new VirtualFile(this, name, data);
    this.files.push(f);
    return f
  };
  this.getFile = function(name) {
    for(var i = 0;i < this.files.length;i++) {
      if(this.files[i].name == name) {
        return this.files[i]
      }
    }
    throwError("file not found")
  };
  this.getDir = function(name) {
    for(var i = 0;i < this.subDirs.length;i++) {
      if(this.subDirs[i].name == name) {
        return this.subDirs[i]
      }
    }
    throwError("Dir not found")
  };
  this.getSubDir = function(name) {
    for(var i = 0;i < this.subDirs.length;i++) {
      if(this.subDirs[i].name == name) {
        return this.subDirs[i]
      }
    }
    throwError("Dir not found: " + name)
  };
  this.getParent = function() {
    return this.parent
  };
  this.getPath = function() {
    return(!!this.getParent() ? this.getParent().getPath() + "/" : "") + this.name
  };
  this.save = function() {
    var text = "";
    if(this.getParent() != null) {
      text = 't.cD("' + this.getPath() + '");\n'
    }
    for(var i = 0;i < this.files.length;i++) {
      text += this.files[i].save()
    }
    for(var i = 0;i < this.subDirs.length;i++) {
      text += this.subDirs[i].save()
    }
    return text
  }
}
function VirtualFile(dir, name, data) {
  this.name = name;
  this.data = data;
  this.dir = dir;
  this.getName = function() {
    return this.name
  };
  this.getData = function() {
    return this.data
  };
  this.save = function() {
    return't.cF("' + this.dir.getPath() + "/" + this.name + '", ' + JSON.stringify(this.data) + ");\n"
  }
}
function Channel(channel, file, mode) {
  this.channel = channel;
  this.mode = mode;
  this.ptr = 0;
  file = file.toLowerCase();
  if(fileSystem.doesFileExist(file)) {
    this.file = fileSystem.getFile(file)
  }else {
    if(staticFileSystem.doesFileExist(file)) {
      if(mode == 1) {
        this.file = staticFileSystem.getFile(file)
      }else {
        var tmp = staticFileSystem.getFile(file);
        this.file = fileSystem.createFile(file, tmp.data)
      }
    }else {
      if(mode != 1) {
        try {
          this.file = fileSystem.createFile(file, [])
        }catch(ex) {
          throwError("cannot create file: " + file)
        }
      }else {
        throwError("file not found: " + file)
      }
    }
  }
  if(mode == -1) {
    this.ptr = this.file.data.length
  }
  this.updateSize = function() {
    if(this.ptr > this.file.data.length) {
      this.file.data.length = this.ptr
    }
  };
  this.checkPosition = function() {
    if(this.ptr > this.file.data.length) {
      throwError("Reached end of file: '" + this.ptr + "' filesize: '" + this.file.data.length + "'")
    }
  };
  this.ENDOFFILE = function() {
    return this.ptr >= this.file.data.length || this.ptr < 0
  };
  this.FILESEEK = function(bytes, dir) {
    var old = this.ptr;
    switch(dir) {
      case -1:
        this.ptr = this.file.data.length - bytes;
        break;
      case 0:
        this.ptr = bytes;
        break;
      case 1:
        this.ptr += bytes;
        break
    }
    if(this.ENDOFFILE()) {
      this.ptr = old
    }
  };
  this.READLINE = function() {
    var line = "";
    var character = "";
    while((character = String.fromCharCode(this.file.data[this.ptr])) != "\n" && this.ptr < this.file.data.length) {
      line = line + character;
      this.ptr++
    }
    this.ptr++;
    if(line.substr(line.length - 1, 1) == "\r") {
      line = line.substr(0, line.length - 1)
    }
    this.checkPosition();
    return line
  };
  this.READBYTE = function() {
    this.ptr++;
    var tmp = new Int8Array(1);
    tmp[0] = this.file.data[this.ptr - 1];
    this.checkPosition();
    return tmp[0]
  };
  this.READUBYTE = function() {
    this.ptr++;
    var tmp = new Uint8Array(1);
    tmp[0] = this.file.data[this.ptr - 1];
    this.checkPosition();
    return tmp[0]
  };
  this.READWORD = function() {
    this.ptr += 2;
    var buf = new ArrayBuffer(2);
    var view8 = new Uint8Array(buf);
    view8[0] = this.file.data[this.ptr - 2];
    view8[1] = this.file.data[this.ptr - 1];
    var tmp = new Int16Array(buf);
    this.checkPosition();
    return tmp[0]
  };
  this.READUWORD = function() {
    this.ptr += 2;
    var buf = new ArrayBuffer(2);
    var view8 = new Uint8Array(buf);
    view8[0] = this.file.data[this.ptr - 2];
    view8[1] = this.file.data[this.ptr - 1];
    var tmp = new Uint16Array(buf);
    this.checkPosition();
    return tmp[0]
  };
  this.READLONG = function() {
    this.ptr += 4;
    var buf = new ArrayBuffer(4);
    var view8 = new Uint8Array(buf);
    view8[0] = this.file.data[this.ptr - 4];
    view8[1] = this.file.data[this.ptr - 3];
    view8[2] = this.file.data[this.ptr - 2];
    view8[3] = this.file.data[this.ptr - 1];
    var tmp = new Int32Array(buf);
    this.checkPosition();
    return tmp[0]
  };
  this.READULONG = function() {
    this.ptr += 4;
    var buf = new ArrayBuffer(4);
    var view8 = new Uint8Array(buf);
    view8[0] = this.file.data[this.ptr - 4];
    view8[1] = this.file.data[this.ptr - 3];
    view8[2] = this.file.data[this.ptr - 2];
    view8[3] = this.file.data[this.ptr - 1];
    var tmp = new Uint32Array(buf);
    this.checkPosition();
    return tmp[0]
  };
  this.READIEEE = function() {
    this.ptr += 8;
    var buf = new ArrayBuffer(8);
    var view8 = new Uint8Array(buf);
    view8[0] = this.file.data[this.ptr - 8];
    view8[1] = this.file.data[this.ptr - 7];
    view8[2] = this.file.data[this.ptr - 6];
    view8[3] = this.file.data[this.ptr - 5];
    view8[4] = this.file.data[this.ptr - 4];
    view8[5] = this.file.data[this.ptr - 3];
    view8[6] = this.file.data[this.ptr - 2];
    view8[7] = this.file.data[this.ptr - 1];
    var tmp = new Float64Array(buf);
    this.checkPosition();
    return tmp[0]
  };
  this.READSHORTIEEE = function() {
    this.ptr += 4;
    var buf = new ArrayBuffer(4);
    var view8 = new Uint8Array(buf);
    view8[0] = this.file.data[this.ptr - 4];
    view8[1] = this.file.data[this.ptr - 3];
    view8[2] = this.file.data[this.ptr - 2];
    view8[3] = this.file.data[this.ptr - 1];
    var tmp = new Float32Array(buf);
    this.checkPosition();
    return tmp[0]
  };
  this.READSTR = function(count) {
    var text = "";
    for(var i = 0;i < count;i++) {
      text += CHR_Str(this.READUBYTE())
    }
    return text
  };
  this.WRITEBYTE = function(data) {
    var tmp = new Int8Array(1);
    tmp[0] = data;
    this.file.data[this.ptr] = tmp[0];
    this.ptr++;
    this.updateSize()
  };
  this.WRITEUBYTE = function(data) {
    var tmp = new Uint8Array(1);
    tmp[0] = data;
    this.file.data[this.ptr] = tmp[0];
    this.ptr++;
    this.updateSize()
  };
  this.WRITEWORD = function(data) {
    var buffer = new ArrayBuffer(2);
    var wordView = new Int16Array(buffer);
    wordView[0] = data;
    var byteView = new Uint8Array(buffer);
    for(var i = 0;i < byteView.length;i++) {
      this.WRITEUBYTE(byteView[i])
    }
    this.updateSize()
  };
  this.WRITEUWORD = function(data) {
    var buffer = new ArrayBuffer(2);
    var wordView = new Uint16Array(buffer);
    wordView[0] = data;
    var byteView = new Uint8Array(buffer);
    for(var i = 0;i < byteView.length;i++) {
      this.WRITEUBYTE(byteView[i])
    }
    this.updateSize()
  };
  this.WRITELONG = function(data) {
    var buffer = new ArrayBuffer(4);
    var longView = new Int32Array(buffer);
    longView[0] = data;
    var byteView = new Uint8Array(buffer);
    for(var i = 0;i < byteView.length;i++) {
      this.WRITEUBYTE(byteView[i])
    }
    this.updateSize()
  };
  this.WRITEULONG = function(data) {
    var buffer = new ArrayBuffer(4);
    var longView = new Uint32Array(buffer);
    longView[0] = data;
    var byteView = new Uint8Array(buffer);
    for(var i = 0;i < byteView.length;i++) {
      this.WRITEUBYTE(byteView[i])
    }
    this.updateSize()
  };
  this.WRITEIEEE = function(data) {
    var buffer = new ArrayBuffer(8);
    var floatView = new Float64Array(buffer);
    floatView[0] = data;
    var byteView = new Uint8Array(buffer);
    for(var i = 0;i < byteView.length;i++) {
      this.WRITEUBYTE(byteView[i])
    }
    this.updateSize()
  };
  this.WRITESHORTIEEE = function(data) {
    var buffer = new ArrayBuffer(4);
    var floatView = new Float32Array(buffer);
    floatView[0] = data;
    var byteView = new Uint8Array(buffer);
    for(var i = 0;i < byteView.length;i++) {
      this.WRITEUBYTE(byteView[i])
    }
    this.updateSize()
  };
  this.WRITESTR = function(data) {
    for(var i = 0;i < data.length;i++) {
      this.WRITEUBYTE(ASC(data, i))
    }
    this.updateSize()
  };
  this.WRITELINE = function(data) {
    this.WRITESTR(data + "\r\n")
  }
}
function OPENFILE(channel, file, mode) {
  try {
    channels[channel] = new Channel(channel, file, mode);
    if(channel >= channels.length) {
      channels.length = channel + 1
    }
    return 1
  }catch(ex) {
    return 0
  }
}
function getChannel(chn) {
  if(!channels[chn]) {
    throwError("Cannot find channel: " + chn)
  }
  return channels[chn]
}
function ENDOFFILE(channel) {
  return getChannel(channel).ENDOFFILE() ? 1 : 0
}
function FILEPOSITION(channel) {
  return getChannel(channel).ptr
}
function FILESEEK(channel, bytes, dir) {
  getChannel(channel).FILESEEK(bytes, dir)
}
function KILLFILE(file) {
  try {
    if(fileSystem.doesDirExist(file)) {
      fileSystem.removeDir(file)
    }else {
      if(fileSystem.doesFileExist(file)) {
        fileSystem.removeFile(file)
      }
    }
  }catch(ex) {
  }
  try {
    if(staticFileSystem.doesDirExist(file)) {
      staticFileSystem.removeDir(file)
    }else {
      if(staticFileSystem.doesFileExist(file)) {
        staticFileSystem.removeFile(file)
      }
    }
  }catch(ex) {
  }
}
function CLOSEFILE(channel) {
  channels[channel] = null;
  saveFileSystem()
}
function READUBYTE(channel, b) {
  b[0] = getChannel(channel).READUBYTE()
}
function READBYTE(channel, b) {
  b[0] = getChannel(channel).READBYTE()
}
function READWORD(channel, b) {
  b[0] = getChannel(channel).READWORD()
}
function READUWORD(channel, b) {
  b[0] = getChannel(channel).READUWORD()
}
function READLONG(channel, b) {
  b[0] = getChannel(channel).READLONG()
}
function READULONG(channel, b) {
  b[0] = getChannel(channel).READULONG()
}
function READSHORTIEEE(channel, b) {
  b[0] = getChannel(channel).READSHORTIEEE()
}
function READIEEE(channel, b) {
  b[0] = getChannel(channel).READIEEE()
}
function READLINE(channel, line) {
  line[0] = getChannel(channel).READLINE()
}
function READSTR(channel, str, count) {
  str[0] = getChannel(channel).READSTR(count)
}
function WRITEUBYTE(channel, data) {
  getChannel(channel).WRITEUBYTE(data)
}
function WRITEBYTE(channel, data) {
  getChannel(channel).WRITEBYTE(data)
}
function WRITEWORD(channel, data) {
  getChannel(channel).WRITEWORD(data)
}
function WRITEUWORD(channel, data) {
  getChannel(channel).WRITEUWORD(data)
}
function WRITELONG(channel, data) {
  getChannel(channel).WRITELONG(data)
}
function WRITEULONG(channel, data) {
  getChannel(channel).WRITEULONG(data)
}
function WRITESHORTIEEE(channel, data) {
  getChannel(channel).WRITESHORTIEEE(data)
}
function WRITEIEEE(channel, data) {
  getChannel(channel).WRITEIEEE(data)
}
function WRITELINE(channel, data) {
  getChannel(channel).WRITELINE(data)
}
function WRITESTR(channel, data) {
  getChannel(channel).WRITESTR(data)
}
function SETSHOEBOX(data, media) {
}
function GETCOMMANDLINE_Str() {
  var c = window.location.href;
  var l = INSTR(c, "?");
  if(l == -1) {
    return""
  }
  return REPLACE_Str(MID_Str(c, l + 1), "&", " ")
}
function GETCURRENTDIR_Str() {
  return fileSystem.getCurrentDir()
}
function SETCURRENTDIR(dir) {
  if(dir == "") {
    return
  }
  var tmpDir = rawpath(dir, fileSystem.getMainDir());
  dir = tmpDir.dir.getPath() + dir;
  var fs1 = false, fs2 = false;
  try {
    fileSystem.setCurrentDir(dir);
    fs1 = true
  }catch(ex) {
  }
  try {
    staticFileSystem.setCurrentDir(dir);
    fs2 = true
  }catch(ex) {
  }
  return fs1 && fs2 ? 1 : 0
}
function DOESFILEEXIST(file) {
  return fileSystem.doesFileExist(file) || staticFileSystem.doesFileExist(file) ? 1 : 0
}
function DOESDIREXIST(dir) {
  return fileSystem.doesDirExist(dir) || staticFileSystem.doesDirExist(dir) ? 1 : 0
}
function GETFILESIZE(file) {
  try {
    var f = null;
    if(fileSystem.doesFileExist(file)) {
      f = fileSystem.getFile(file)
    }else {
      if(staticFileSystem.doesFileExist(file)) {
        f = staticFileSystem.getFile(file)
      }else {
        throwError("Cannot find file: " + file)
      }
    }
    if(!!f) {
      return f.data.length
    }
  }catch(ex) {
  }
  return 0
}
function GETFILELIST(find, files) {
  try {
    REDIM(files, [0], files.defval);
    var doesMatch = function(name) {
      var i = 0, j = 0;
      for(var j = 0;j <= find.length;j++) {
        var c = find.charAt(j);
        switch(c) {
          case "*":
            j++;
            var endTok = find.charAt(j);
            j--;
            while(name.charAt(i) != endTok && i < name.length) {
              i++
            }
            break;
          case "?":
            i++;
            break;
          default:
            if(c != name.charAt(i)) {
              return false
            }
            i++
        }
      }
      return true
    };
    var data = fileSystem.getDir("").getList().concat(staticFileSystem.getDir("").getList());
    var numDir = 0, numFile = 0;
    var output = [];
    output.push(".");
    output.push("..");
    for(var i = 0;i < data.length;i++) {
      var o = data[i];
      if(doesMatch(o.name)) {
        if(o instanceof VirtualDirectory) {
          numDir++
        }else {
          if(o instanceof VirtualFile) {
            numFile++
          }else {
            throwError("Unknown file type")
          }
        }
        output.push(o.name)
      }
    }
    for(var i = 0;i < output.length;i++) {
      if(files.defval instanceof Array) {
        DIMPUSH(files, [output[i]])
      }else {
        DIMPUSH(files, output[i])
      }
    }
    return numDir * 4096 + numFile
  }catch(ex) {
    throwError("GETFILELIST error: find: '" + find + "'")
  }
}
function COPYFILE(source, dest) {
  fileSystem.copyFile(source, dest);
  staticFileSystem.copyFile(source, dest)
}
function CREATEDIR(dir) {
  try {
    fileSystem.createDir(dir);
    staticFileSystem.createDir(dir);
    return 1
  }catch(ex) {
  }
  return 0
}
function PUTENV(name, value) {
  localStorage.setItem(("env_" + name).toLowerCase(), value)
}
function GETENV_Str(name) {
  return localStorage.getItem(("env_" + name).toLowerCase())
}
function rot13(text) {
  var newText = "";
  for(i = 0;i < LEN(text);i++) {
    newText = newText + CHR_Str(ASC(text, i) - 13)
  }
  return newText
}
function SLEEP(time) {
  var start = GETTIMERALL();
  while(GETTIMERALL() - start < time) {
  }
}
function INI(file) {
  this.parse = function(text) {
    try {
      var lines = text.replace("\r").split("\n");
      var cat = "";
      for(var i = 0;i < lines.length;i++) {
        var l = lines[i];
        if(INSTR(l, ";") != -1) {
          l = MID_Str(l, 0, INSTR_Str(l, ";"))
        }
        if(MID_Str(l, 0, 1) == "[") {
          cat = MID_Str(l, 1, REVINSTR(l, "]") - 1)
        }else {
          if(INSTR(l, "=") != -1) {
            var k = MID_Str(l, 0, INSTR(l, "="));
            var v = MID_Str(l, INSTR(l, "=") + 1);
            INIPUT(cat, k, v)
          }
        }
      }
    }catch(ex) {
      throwError("INI parse error: '" + text * "'")
    }
  };
  this.put = function(cat, key, value) {
    try {
      cat = cat.toLowerCase();
      var c;
      for(var i = 0;i < this.cats.length;i++) {
        if(this.cats[i].name == cat) {
          c = this.cats[i];
          if(key == "" && value == "") {
            this.cats.splice(i, 1);
            return
          }
          break
        }
      }
      if(!c) {
        c = new INICat(cat);
        this.cats.push(c)
      }
      c.put(key, value)
    }catch(ex) {
      throwError("INIPUT error cat: '" + cat + "' key: '" + key + "' value: '" + value + "'")
    }
  };
  this.get = function(cat, key) {
    try {
      cat = cat.toLowerCase();
      var c;
      for(var i = 0;i < this.cats.length;i++) {
        if(this.cats[i].name == cat) {
          c = this.cats[i];
          break
        }
      }
      if(!c) {
        c = new INICat(cat)
      }
      return c.get(key)
    }catch(ex) {
      throwError("INIGET error cat: '" + cat + "' key: '" + key + "'")
    }
  };
  this.save = function() {
    var text = "";
    for(var i = 0;i < this.cats.length;i++) {
      text += "[" + this.cats[i].name + "]\n";
      text += this.cats[i].save()
    }
    return text
  };
  this.cats = [];
  this.channel = 1337 * 2;
  try {
    OPENFILE(this.channel, file, 0);
    var size = GETFILESIZE(file);
    if(size > 0) {
      var text = [""];
      READSTR(this.channel, text, size);
      var o = curIni;
      curIni = this;
      this.parse(text[0]);
      curIni = o
    }
  }catch(ex) {
    throwError("INI load error: '" + file + "'")
  }
}
function INICat(name) {
  this.name = name;
  this.keys = [];
  this.put = function(key, value) {
    key = key.toLowerCase();
    var kv;
    for(var i = 0;i < this.keys.length;i++) {
      if(this.keys[i].key == key) {
        kv = this.keys[i];
        if(value == "") {
          this.keys.splice(i, 1);
          return
        }
        break
      }
    }
    if(!kv) {
      kv = new INIKeyValue(key, value);
      this.keys.push(kv)
    }
  };
  this.get = function(key) {
    key = key.toLowerCase();
    var kv;
    for(var i = 0;i < this.keys.length;i++) {
      if(this.keys[i].key == key) {
        kv = this.keys[i];
        break
      }
    }
    if(!kv) {
      kv = new INIKeyValue(key, "");
      this.keys.push(kv)
    }
    return kv.value
  };
  this.save = function() {
    var text = "";
    for(var i = 0;i < this.keys.length;i++) {
      text += this.keys[i].key + "=" + this.keys[i].value + "\n"
    }
    return text
  }
}
function INIKeyValue(key, value) {
  this.key = key;
  this.value = value
}
var curIni = null;
function INIOPEN(file) {
  if(!!curIni) {
    var text = curIni.save();
    WRITESTR(curIni.channel, text);
    CLOSEFILE(curIni.channel)
  }
  if(file == "") {
    curIni = null
  }else {
    curIni = new INI(file)
  }
}
function INIPUT(cat, name, key) {
  if(!!curIni) {
    curIni.put(cat, name, key)
  }
}
function INIGET_Str(cat, name) {
  if(!!curIni) {
    return curIni.get(cat, name)
  }
}
function nextRandomNumber() {
  var hi = this.seed / this.Q;
  var lo = this.seed % this.Q;
  var test = this.A * lo - this.R * hi;
  if(test > 0) {
    this.seed = test
  }else {
    this.seed = test + this.M
  }
  return this.seed * this.oneOverM
}
function RandomNumberGenerator(seed) {
  this.seed = seed;
  this.A = 48271;
  this.M = 2147483647;
  this.Q = this.M / this.A;
  this.R = this.M % this.A;
  this.oneOverM = 1 / this.M;
  this.next = nextRandomNumber;
  return this
}
if(!window.localStorage) {
  Object.defineProperty(window, "localStorage", new function() {
    var aKeys = [], oStorage = {};
    Object.defineProperty(oStorage, "getItem", {value:function(sKey) {
      return sKey ? this[sKey] : null
    }, writable:false, configurable:false, enumerable:false});
    Object.defineProperty(oStorage, "key", {value:function(nKeyId) {
      return aKeys[nKeyId]
    }, writable:false, configurable:false, enumerable:false});
    Object.defineProperty(oStorage, "setItem", {value:function(sKey, sValue) {
      if(!sKey) {
        return
      }
      document.cookie = escape(sKey) + "=" + escape(sValue) + "; path=/"
    }, writable:false, configurable:false, enumerable:false});
    Object.defineProperty(oStorage, "length", {get:function() {
      return aKeys.length
    }, configurable:false, enumerable:false});
    Object.defineProperty(oStorage, "removeItem", {value:function(sKey) {
      if(!sKey) {
        return
      }
      var sExpDate = new Date;
      sExpDate.setDate(sExpDate.getDate() - 1);
      document.cookie = escape(sKey) + "=; expires=" + sExpDate.toGMTString() + "; path=/"
    }, writable:false, configurable:false, enumerable:false});
    this.get = function() {
      var iThisIndx;
      for(var sKey in oStorage) {
        iThisIndx = aKeys.indexOf(sKey);
        if(iThisIndx === -1) {
          oStorage.setItem(sKey, oStorage[sKey])
        }else {
          aKeys.splice(iThisIndx, 1)
        }
        delete oStorage[sKey]
      }
      for(;aKeys.length > 0;aKeys.splice(0, 1)) {
        oStorage.removeItem(aKeys[0])
      }
      for(var iCouple, iKey, iCouplId = 0, aCouples = document.cookie.split(/\s*;\s*/);iCouplId < aCouples.length;iCouplId++) {
        iCouple = aCouples[iCouplId].split(/\s*=\s*/);
        if(iCouple.length > 1) {
          oStorage[iKey = unescape(iCouple[0])] = unescape(iCouple[1]);
          aKeys.push(iKey)
        }
      }
      return oStorage
    };
    this.configurable = false;
    this.enumerable = true
  })
}
function NETWEBEND(url) {
  window.location = url;
  END()
}
window.requestAnimFrame = function() {
  return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(callback, element) {
    window.setTimeout(callback, 1E3 / 60)
  }
}();
function checkBrowserName(name) {
  var agent = navigator.userAgent.toLowerCase();
  if(agent.indexOf(name.toLowerCase()) > -1) {
    return true
  }
  return false
}
window.onbeforeunload = function(e) {
  e = e || window.event;
  CALLBYNAME("GLB_ON_QUIT");
  saveFileSystem()
};
function saveFileSystem() {
  localStorage.setItem("filesystem", fileSystem.save())
}
var tmpAlert = alert;
alert = function(msg) {
  tmpAlert(msg)
};
if(initFS) {
  initFS()
}
;
