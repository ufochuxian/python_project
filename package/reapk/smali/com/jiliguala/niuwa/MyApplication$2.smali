.class Lcom/jiliguala/niuwa/MyApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/MyApplication;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/MyApplication;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/jiliguala/niuwa/MyApplication$2;->a:Lcom/jiliguala/niuwa/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/util/ErrorCode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "code"    # Lcom/alibaba/sdk/android/feedback/util/ErrorCode;

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrMsg is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method
