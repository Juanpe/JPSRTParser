JPSRTParser
===========

Parser of SRT files

## Usage
- Clone the repository:

```bash
$ git clone https://github.com/Juanpe/JPSRTParser.git
```

- Drag the ```JPSRTParserTool``` folder into your project.
- Include the header file:

```objc
#import "JPSRTParser.h"
```

- Create a ```JPSRTParser``` with SRT file or SRT URL and execute parse method. Example:


```objc
    JPSRTParser* parser = [[JPSRTParser alloc] initWithContentOfSRTFile:[[NSBundle mainBundle] pathForResource:@"tst" ofType:@"srt"]];
    NSArray* subtitles 	= [parser parse];
    NSLog(@"Subtitles %@",subtitles);
```

Or, with blocks

```objc
    JPSRTParser* parser = [[JPSRTParser alloc] initWithContentOfSRTFile:[[NSBundle mainBundle] pathForResource:@"tst" ofType:@"srt"]];
    [parser parseCompletion:^(JPSRTParsingState status, NSArray* subtitles){
    
        if (status == JPSRTParsingStateCompleted) {
            NSLog(@"-----------------------------------------------------");
            [subtitles enumerateObjectsUsingBlock:^(id object, NSUInteger index, BOOL *stop) {
                
                NSLog(@"Subtitle %d",index);
                NSLog(@"Text => %@", [(JPSRTParserNode *) object nodeText]);
                NSLog(@"Time => %f : %f", [(JPSRTParserNode *) object beginTime], [(JPSRTParserNode *) object endTime]);
                NSLog(@"-----------------------------------------------------");
            }];
        }else{
            NSLog(@"Error to parse");
        }
    }];
```

