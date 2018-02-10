.class public Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

.field private view2131296276:Landroid/view/View;

.field private view2131296454:Landroid/view/View;

.field private view2131296724:Landroid/view/View;

.field private view2131296724TextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;Landroid/view/View;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;
    .param p2, "source"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/am;
    .end annotation

    .prologue
    const v5, 0x7f0901d4

    const v4, 0x7f0900c6

    const v3, 0x7f090014

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    .line 42
    const-string v1, "field \'actionBack\' and method \'onViewClicked\'"

    invoke-static {p2, v3, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'actionBack\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v0, v3, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->actionBack:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296276:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$1;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f090112

    const-string v2, "field \'cdkeyImg\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {p2, v1, v2, v3}, Lbutterknife/internal/d;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->cdkeyImg:Landroid/widget/ImageView;

    .line 52
    const-string v1, "field \'editExchange\' and method \'onTextChanged\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    const-string v1, "field \'editExchange\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {v0, v5, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->editExchange:Landroid/widget/EditText;

    .line 54
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296724:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$2;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296724TextWatcher:Landroid/text/TextWatcher;

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296724TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    const-string v1, "field \'btnExchange\' and method \'onViewClicked\'"

    invoke-static {p2, v4, v1}, Lbutterknife/internal/d;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'btnExchange\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {v0, v4, v1, v2}, Lbutterknife/internal/d;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->btnExchange:Landroid/widget/Button;

    .line 72
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296454:Landroid/view/View;

    .line 73
    new-instance v1, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding$3;-><init>(Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 4
    .annotation build Landroid/support/annotation/i;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    .line 85
    .local v0, "target":Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->target:Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;

    .line 88
    iput-object v3, v0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->actionBack:Landroid/widget/ImageView;

    .line 89
    iput-object v3, v0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->cdkeyImg:Landroid/widget/ImageView;

    .line 90
    iput-object v3, v0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->editExchange:Landroid/widget/EditText;

    .line 91
    iput-object v3, v0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity;->btnExchange:Landroid/widget/Button;

    .line 93
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296276:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296276:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296724:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296724TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296724TextWatcher:Landroid/text/TextWatcher;

    .line 97
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296724:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296454:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/CdKeyActivity_ViewBinding;->view2131296454:Landroid/view/View;

    .line 100
    return-void
.end method
