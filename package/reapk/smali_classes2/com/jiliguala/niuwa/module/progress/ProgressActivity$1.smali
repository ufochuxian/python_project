.class Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/progress/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 108
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->onBackPressed()V

    goto :goto_0

    .line 111
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$000(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$100(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;I)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/progress/ProgressActivity$1;->a:Lcom/jiliguala/niuwa/module/progress/ProgressActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$000(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/progress/ProgressActivity;->access$200(Lcom/jiliguala/niuwa/module/progress/ProgressActivity;I)V

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090381 -> :sswitch_1
        0x7f0903fa -> :sswitch_2
    .end sparse-switch
.end method
