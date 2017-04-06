/*
 
 Video Core
 Copyright (c) 2014 James G. Hurley
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 
 */
#ifndef __videocore__CameraSource__
#define __videocore__CameraSource__

#include <iostream>
#include <videocore/Shared/sources/ISource.hpp>
#include <videocore/Shared/transforms/IOutput.hpp>
#include <glm/glm.hpp>


namespace videocore { namespace android {
    
    /*!
     *  Capture video from the device's cameras.
     */
    class CameraSource : public ISource, public std::enable_shared_from_this<CameraSource>
    {
    public:
        
        
        /*! Constructor */
        CameraSource();
        
        /*! Destructor */
        ~CameraSource();
        
        /*! ISource::setOutput */
        void setOutput(std::shared_ptr<IOutput> output);
        
    private:
        
        /*! 
         * Get a camera with a specified position
         *
         * \param position The position to search for.
         * 
         * \return the camera device, if found.
         */
        void* cameraWithPosition(int position);
        
    private:
        
        glm::mat4 m_matrix;
        struct { float x, y, w, h, vw, vh, a; } m_size, m_targetSize;
        
        std::weak_ptr<IOutput> m_output;
    };
    
}
}
#endif /* defined(__videocore__CameraSource__) */
