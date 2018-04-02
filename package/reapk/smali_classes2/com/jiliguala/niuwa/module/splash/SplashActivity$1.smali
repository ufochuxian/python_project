.class Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/splash/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->access$000(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->access$000(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->access$000(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/p/a;->a(II)V

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/splash/SplashActivity$1;->a:Lcom/jiliguala/niuwa/module/splash/SplashActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/splash/SplashActivity;->access$100(Lcom/jiliguala/niuwa/module/splash/SplashActivity;)V

    .line 102
    return-void
.end method
