# 视频中的aspect radio的意思

## 视频中的aspect radio的意思

transcoding是一个可以转换视频编码的自由软件工具。

http://www.transcoding.org/cgi-bin/transcode?Aspect_Ratio

Aspect Ratio
Aspect ratio refers generally to the ratio between the width and height of an object. Aspect ratios are typically written either as a ratio, such as "4:3" or "16:9", or as a decimal number obtained by dividing the first number by the second, such as 1.333 or 1.778. (In many cases, including these two examples, aspect ratios cannot be represented accurately as decimal numbers, so the ratio format is preferred.)

There are two types of aspect ratios involved in video editing. One is display aspect ratio or DAR; this is the ratio most commonly referred to by the term "aspect ratio", and is the ratio of the video frame's physical (displayed) width to its height, regardless of the number of pixels used to represent the video image. Typical DAR values are 4:3 for standard-definition video or 16:9 for widescreen television.

The other type of aspect ratio is pixel aspect ratio, or PAR (also known as "sample aspect ratio" or SAR). This is the ratio of the width to the height of a single pixel in the video image; a PAR of 1:1 means that each pixel is a perfect square, while a PAR of 2:1 would mean that each pixel is a rectangle twice as wide as it is tall. PAR can be used to refer either to the pixels in a video file, or to the pixels on a physical display device such as a television.

These two aspect ratios are related to each other and the number of pixels in the video frame (or display device) as follows:

    DAR   width
    --- = ------
    PAR   height

When transcoding a video, it is important to take both of these aspect ratios into account. For example, most NTSC DVDs use a video frame size of 720x480 pixels but a DAR of either 4:3 or 16:9, meaning that the PAR is not 1:1. If you transcode that DVD to an AVI file without changing the size, the resulting video may look "squished" in one direction. This is because most video playing software (with the notable exception of MPlayer) assumes that AVI files have a PAR of 1:1, resulting in a DAR of 720:480, or 3:2, for the displayed video frame.

Choosing the proper size for a video when transcoding can be a confusing task. For some examples of how to determine size and aspect ratio, see: Calculating frame size and aspect ratio 

http://www.transcoding.org/cgi-bin/transcode?Aspect_Ratio


2008-04-02