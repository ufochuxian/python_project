.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->downloadSplash(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/logic/p/a;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->access$302(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Z)Z

    .line 126
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/p/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$4;->a(Ljava/util/List;)V

    return-void
.end method
