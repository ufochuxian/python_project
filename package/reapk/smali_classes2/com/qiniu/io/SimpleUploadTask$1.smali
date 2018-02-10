.class Lcom/qiniu/io/SimpleUploadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qiniu/utils/IOnProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/io/SimpleUploadTask;->buildHttpEntity()Lcom/qiniu/utils/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/io/SimpleUploadTask;


# direct methods
.method constructor <init>(Lcom/qiniu/io/SimpleUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qiniu/io/SimpleUploadTask;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/qiniu/io/SimpleUploadTask$1;->this$0:Lcom/qiniu/io/SimpleUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcess(JJ)V
    .locals 5
    .param p1, "current"    # J
    .param p3, "total"    # J

    .prologue
    .line 79
    iget-object v0, p0, Lcom/qiniu/io/SimpleUploadTask$1;->this$0:Lcom/qiniu/io/SimpleUploadTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/qiniu/io/SimpleUploadTask;->access$000(Lcom/qiniu/io/SimpleUploadTask;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method
