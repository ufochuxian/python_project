.class Lcom/jiliguala/niuwa/common/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/a/d;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/a/d;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/a/d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/a/d;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/a/d$1;->a:Lcom/jiliguala/niuwa/common/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
