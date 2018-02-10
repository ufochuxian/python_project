.class Lcom/qiniu/utils/InputStreamAt$UriInput$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qiniu/utils/InputStreamAt$Input;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/utils/InputStreamAt$UriInput;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bi:Lcom/qiniu/utils/InputStreamAt$ByteInput;

.field private content:[B

.field final synthetic this$0:Lcom/qiniu/utils/InputStreamAt$UriInput;

.field final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/qiniu/utils/InputStreamAt$UriInput;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/qiniu/utils/InputStreamAt$UriInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->this$0:Lcom/qiniu/utils/InputStreamAt$UriInput;

    iput p2, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->this$0:Lcom/qiniu/utils/InputStreamAt$UriInput;

    iget v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->val$len:I

    invoke-static {v0, v1}, Lcom/qiniu/utils/InputStreamAt$UriInput;->access$000(Lcom/qiniu/utils/InputStreamAt$UriInput;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->content:[B

    .line 309
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$ByteInput;

    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->content:[B

    invoke-direct {v0, v1}, Lcom/qiniu/utils/InputStreamAt$ByteInput;-><init>([B)V

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->bi:Lcom/qiniu/utils/InputStreamAt$ByteInput;

    .line 310
    return-void
.end method


# virtual methods
.method public readAll()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->content:[B

    return-object v0
.end method

.method public readNext(I)[B
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->bi:Lcom/qiniu/utils/InputStreamAt$ByteInput;

    invoke-virtual {v0, p1}, Lcom/qiniu/utils/InputStreamAt$ByteInput;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;

    move-result-object v0

    invoke-interface {v0}, Lcom/qiniu/utils/InputStreamAt$Input;->readAll()[B

    move-result-object v0

    return-object v0
.end method
