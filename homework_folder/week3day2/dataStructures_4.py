# /**********************************************************************************
#  *                                 Homework VIII                                  *
#  *                                                                                *
#  *  Problem: Graph                                                                *
#  *                                                                                *
#  *  Prompt: Create a Graph class/constructor.                                     *
#  *          Name it Graph (js) or graph (rb/py).                                  *
#  *                                                                                *
#  *          The Graph will have the following properties:                         *
#  *                                                                                *
#  *          vertices: A hash/dictionary/object to store vertices.                 *
#  *                                                                                *
#  *          totalVertices: The total vertices in your Graph.                      *
#  *                                                                                *
#  *          totalEdges: The total edges among all vertices in your Graph.         *
#  *                                                                                *
#  *          The Graph will also have the following methods:                       *
#  *                                                                                *
#  *          addVertex: Method that accepts an id (int/str), and creates an object *
#  *                     with a "value" of id, and a property called "edges" which  *
#  *                     will store the edges of the vertex. If a vertex with the id*
#  *                     already exists, then do not create a new vertex.           *
#  *                                                                                *
#  *          getVertex: Method that takes an id, and outputs the vertex with the   *
#  *                     matching id, if it exists.                                 *
#  *                                                                                *
#  *          removeVertex: Method that takes an id as its input, and removes the   *
#  *                        vertex with the matching id.                            *
#  *                                                                                *
#  *          addEdge: Method that accepts two different id's as its input, and     *
#  *                   creates an edge between both vertices.                       *
#  *                   (This edge may look like [id1,id2])                          *
#  *                                                                                *
#  *          removeEdge: Method that accepts two different id's as its input, and  *
#  *                      removes the edge between the two vertices if it exists.   *
#  *                                                                                *
#  *          findNeighbors: Method that accepts an id as its input, and returns    *
#  *                         all of the edges of that vertex.                       *
#  *                                                                                *
#  *          forEachNode: Method that accepts an operation, and performs that      *
#  *                       operation on each vertex in the Graph.                   *
#  *                                                                                *
#  *  Input:  N/A                                                                   *
#  *  Output: A Graph instance                                                      *
#  *                                                                                *
#  *  What are the time and auxilliary space complexities of the various methods?   *
#  *                                                                                *
#  **********************************************************************************/


# /**
#  *  Extra Credit: forEachEdge
#  *
#  *  Prompt: Method that accepts an operation, and performs that operation on each
#  *          edge in the Graph.
#  **/


class Vertex:
  def __init__(self, data=0):
    self.value = data
    self.edges = {}

class Graph: 
  def __init__(self):
    self.vertices = {}
    self.totalVertices = 0
    self.totalEdges = 0

  def addVertex(self, val=None):

  def getVertex(self, val=None):

  def removeVertex(self, val=None):

  def addEdge(self, val1=None, val2=None):

  def removeEdge(self, val1=None, val2=None):

  def findNeighbors(self, val=None):

  def forEachNode(self, callback=None):

  def forEachEdge(self, callback=None):











