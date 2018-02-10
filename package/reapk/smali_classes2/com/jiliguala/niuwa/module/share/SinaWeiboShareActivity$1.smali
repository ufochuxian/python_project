.class Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity$1;->a:Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity$1;->a:Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->onBackPressed()V

    goto :goto_0

    .line 75
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity$1;->a:Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->access$000(Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;)V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090033 -> :sswitch_1
    .end sparse-switch
.end method
