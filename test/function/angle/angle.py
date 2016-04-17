import numpy as np

def angle2D(vec1,vec2):
    length1 = np.linalg.norm(vec1)
    length2 = np.linalg.norm(vec2)
    print("length ", length1, length2)
    return np.arccos(np.dot(vec1,vec2)/(length1*length2))

def angle3D(vec1, vec2):
    # return the angle
    v1 = vec1[[0,1]]
    v2 = vec2[[0,1]]
    a3 = angle2D(v1,v2)

    v1 = vec1[[0,2]]
    v2 = vec2[[0,2]]
    a2 = angle2D(v1,v2)

    v1 = vec1[[1,2]]
    v2 = vec2[[1,2]]
    a1 = angle2D(v1,v2)

    return np.array([a1,a2,a3])

np.set_printoptions(precision=18)
v1    = np.array([-5.908280911892572,-1.04509170227587,-3.0])
v_ref = np.array([-5.908280911892572,-1.04509170227587,-8.0])
print(angle3D(v1,v_ref), )
