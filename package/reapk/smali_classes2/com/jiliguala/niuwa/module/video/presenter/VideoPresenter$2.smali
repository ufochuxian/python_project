.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->onRenderPlaySucceed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$2;->a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$2;->a:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$202(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Z)Z

    .line 1670
    return-void
.end method
