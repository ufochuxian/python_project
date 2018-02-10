.class final Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;->a:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$1;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;-><init>(Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton$a;->a:Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/switchbutton/SwitchButton;->performClick()Z

    .line 326
    return-void
.end method
