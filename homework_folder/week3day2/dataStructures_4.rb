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
 

class Node
  @value = id;
  @edges = {}
end

class Graph
  @vertices = {}
  @totalVertices = 0
  @totalEdges = 0
end








# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

class GraphClassTest < Test::Unit::TestCase
  def test_Graph_properties_existence
    test = Graph.new()

    assert_respond_to(test, :vertices)
    assert_respond_to(test, :totalVertices)
    assert_respond_to(test, :totalEdges)
    assert_equal(0, test.totalVertices)
    assert_equal(0, test.totalEdges)
  end

  def test_Graph_methods_existence
    test = Graph.new()

    assert_respond_to(test, :addVertex)
    assert_respond_to(test, :getVertex)
    assert_respond_to(test, :removeVertex)
    assert_respond_to(test, :addEdge)
    assert_respond_to(test, :removeEdge)
    assert_respond_to(test, :findNeighbors)
    assert_respond_to(test, :forEachNode)
  end

  def test_Graph_addVertex_add_single_vertex
    test = Graph.new()

    assert_equal(undef, test.vertices['hello'])

    test.addVertex('hello')
    assert_equal('hello', test.vertices['hello'].value)
    assert_equal(1, test.totalVertices)
  end

  def test_Graph_addVertex_add_two_vertices
    test = Graph.new()

    assert_equal(undef, test.vertices['hello'])

    test.addVertex('hello')
    assert_equal('hello', test.vertices['hello'].value)
    assert_equal(1, test.totalVertices)

    test.addVertex('good')
    assert_equal('good', test.vertices['good'].value)
    assert_equal(2, test.totalVertices)    
  end

  def test_Graph_addVertex_should_not_increase_the_totalVertices_count_when_vertex_already_exists
    test = Graph.new()

    assert_equal(undef, test.vertices['hello'])

    test.addVertex('hello')
    assert_equal('hello', test.vertices['hello'].value)
    assert_equal(1, test.totalVertices)

    test.addVertex('hello')
    assert_equal('hello', test.vertices['hello'].value)
    assert_equal(1, test.totalVertices)    
  end

  def test_Graph_getVertex_should_return_entire_vertex_of_queried_ID
    test = Graph.new()

    test.addVertex('hello')
    result = test.getVertex('hello')

    assert_equal('hello', result.value)
    assert_respond_to(result, :value)
    assert_respond_to(result, :edges)
  end

  def test_Graph_getVertex_should_return_undef_when_vertex_ID_does_not_exist
    test = Graph.new()

    result = test.getVertex('notHere')

    assert_equal(undef, result)
  end

  def test_Graph_removeVertex_should_remove_vertex_when_deleted
    test = Graph.new()

    test.addVertex('hello')

    assert_equal('hello', test.vertices['hello'].value)
    assert_equal(1, test.totalVertices)

    test.removeVertex('hello')
    expect(undef, test.vertices['hello'])
  end

  def test_Graph_addEdge_should_create_edge_between_vertices
    test = Graph.new()

    test.addVertex('hello')
    test.addVertex('goodbye')

    test.addEdge('hello', 'goodbye')

    assert_equal('goodbye', test.vertices['hello'].edges['goodbye'])
    assert_equal('hello', test.vertices['goodbye'].edges['hello'])
  end

  def test_Graph_addEdge_should_increase_edge_counter
    test = Graph.new()

    test.addVertex('hello')
    test.addVertex('goodbye')

    test.addEdge('hello', 'goodbye')
    assert_equal(1, test.totalEdges)
  end

  def test_Graph_removeEdge_should_remove_edge_between_vertices
    test = Graph.new()

    test.addVertex('hello')
    test.addVertex('goodbye')
    test.addEdge('hello', 'goodbye')

    assert_equal('goodbye', test.vertices['hello'].edges['goodbye'])
    assert_equal('hello', test.vertices['goodbye'].edges['hello'])

    test.removeEdge('hello', 'goodbye')

    assert_equal(undef, test.vertices['hello'].edges['goodbye'])
    assert_equal(undef, test.vertices['goodbye'].edges['hello'])
    assert_equal(0, test.totalEdges)
  end

  def test_Graph_removeEdge_should_not_decrease_totalEdges_counter_when_edge_does_not_exist
    test = Graph.new()

    test.addVertex('hello')
    test.addVertex('goodbye')
    test.addVertex('blah')

    test.addEdge('hello', 'goodbye')

    assert_equal('goodbye', test.vertices['hello'].edges['goodbye'])
    assert_equal('goodbye', test.vertices['goodbye'].edges['hello'])

    test.removeEdge('hello', 'blah')
    assert_equal(1, test.totalEdges)
  end

  def test_Graph_findNeighbors_should_return_array_of_neighbor_IDs
    test = Graph.new()

    test.addVertex('hello');
    test.addVertex('goodbye');
    test.addVertex('blah');
    test.addVertex('haha');

    test.addEdge('hello', 'goodbye');
    test.addEdge('hello', 'blah');

    assert_equal('goodbye', test.vertices['hello'].edges['goodbye'])
    assert_equal('hello', test.vertices['goodbye'].edges['hello'])
    assert_equal('blah', test.vertices['hello'].edges['blah'])
    assert_equal('hello', test.vertices['blah'].edges['hello'])

    result = test.findNeighbors('hello')
    assert_includes(result, 'goodbye')
    assert_includes(result, 'blah')
  end

  def test_Graph_findNeighbors_should_return_empty_array_when_no_edges
    test = Graph.new()

    test.addVertex('hello');
    test.addVertex('goodbye');
    test.addVertex('blah');
    test.addVertex('haha');

    test.addEdge('hello', 'goodbye');
    test.addEdge('hello', 'blah');

    result = test.findNeighbors('haha')
    assert_equal(0, result.length)
  end

  def test_Graph_forEachNode_method_should_perform_callback_on_all_nodes
    # insert test here
  end

end