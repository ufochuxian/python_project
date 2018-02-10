.class Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->enterAngryMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    const-class v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;->c:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;->b:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 357
    .local v0, "reloadButton":Landroid/widget/Button;
    sget-boolean v1, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 358
    :cond_0
    new-instance v1, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4$1;-><init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    return-void
.end method
