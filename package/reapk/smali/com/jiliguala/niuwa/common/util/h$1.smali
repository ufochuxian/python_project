.class final Lcom/jiliguala/niuwa/common/util/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/h$a;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/common/util/h$a;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/jiliguala/niuwa/common/util/h$a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/h$1;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/h$1;->b:Lcom/jiliguala/niuwa/common/util/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 120
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/h$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/h$1;->b:Lcom/jiliguala/niuwa/common/util/h$a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/h$1;->b:Lcom/jiliguala/niuwa/common/util/h$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/h$a;->a()V

    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/h$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/h$1;->b:Lcom/jiliguala/niuwa/common/util/h$a;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/h$1;->b:Lcom/jiliguala/niuwa/common/util/h$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/h$a;->b()V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_1
        0x7f090156 -> :sswitch_0
    .end sparse-switch
.end method
