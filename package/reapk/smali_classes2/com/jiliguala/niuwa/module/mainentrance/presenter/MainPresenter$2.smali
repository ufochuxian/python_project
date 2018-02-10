.class Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/s/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->checkVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "oldVer"    # I
    .param p3, "curVer"    # I

    .prologue
    .line 137
    packed-switch p1, :pswitch_data_0

    .line 150
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 170
    :cond_0
    :goto_1
    return-void

    .line 141
    :pswitch_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/j/a;->e()V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->newStart()V

    goto :goto_1

    .line 158
    :pswitch_2
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/j/a;->e()V

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->updateStart()V

    goto :goto_1

    .line 164
    :pswitch_3
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/j/a;->f()V

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter$2;->a:Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainView;->normalStart()V

    goto :goto_1

    .line 137
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
