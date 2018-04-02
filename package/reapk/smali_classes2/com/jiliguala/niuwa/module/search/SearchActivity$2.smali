.class Lcom/jiliguala/niuwa/module/search/SearchActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$2;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 112
    :sswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$2;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$000(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    goto :goto_0

    .line 115
    :sswitch_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$2;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/zxing/activity/CaptureActivity;->makeIntentForISBNScan(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$2;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    const/16 v2, 0x1000

    invoke-virtual {v1, v0, v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$2;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    const v2, 0x7f01001f

    const v3, 0x7f010014

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09048a -> :sswitch_1
        0x7f090599 -> :sswitch_0
    .end sparse-switch
.end method
