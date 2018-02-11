.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->checkFeedBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 612
    return-void
.end method

.method public onSuccess(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 599
    if-lez p1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldFeedBackShowRedDot:Z

    .line 601
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$600(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 602
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$700(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 607
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->shouldFeedBackShowRedDot:Z

    .line 605
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$800(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    goto :goto_0
.end method
