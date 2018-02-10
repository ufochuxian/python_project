.class public Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private sMediaScannerConnection:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;)Landroid/media/MediaScannerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->sMediaScannerConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;
    .param p1, "x1"    # Landroid/media/MediaScannerConnection;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->sMediaScannerConnection:Landroid/media/MediaScannerConnection;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f0b0026

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->setContentView(I)V

    .line 38
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f090421

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "qrCode":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 52
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "\u4fdd\u5b58\u56fe\u7247"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$2;-><init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;Landroid/view/View;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 61
    const/4 v0, 0x1

    const-string v1, "\u53d6\u6d88"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 63
    :cond_0
    return-void
.end method

.method public save(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 67
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 68
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 69
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$4;-><init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;Landroid/widget/ImageView;)V

    .line 70
    invoke-virtual {v1, v2}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$3;-><init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;)V

    .line 76
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 116
    return-void
.end method
