.class Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4$1;->a:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4$1;->a:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$4;->c:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->access$100(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V

    .line 362
    return-void
.end method
