.class public Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 46
    :sswitch_0
    const-string v0, "JLGL://newphoni-purchase"

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;->finish()V

    goto :goto_0

    .line 50
    :sswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;->finish()V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090096 -> :sswitch_1
        0x7f09023a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v2, "PREFS_KEY_NUM_SHOW_ONEVONE_BUY_PAGE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, "numShowBuyPage":I
    const-string v2, "PREFS_KEY_NUM_SHOW_ONEVONE_BUY_PAGE"

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "numShowBuyPage":I
    .local v1, "numShowBuyPage":I
    invoke-static {v2, v0}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;I)V

    .line 30
    const v2, 0x7f0b0043

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;->setContentView(I)V

    .line 32
    const v2, 0x7f090096

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v2, 0x7f09023a

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
