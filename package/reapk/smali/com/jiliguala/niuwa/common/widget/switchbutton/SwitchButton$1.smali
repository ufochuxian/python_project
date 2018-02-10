.class Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->setCheckedDelayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;->b:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;->b:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 168
    return-void
.end method
