.class Lcom/jiliguala/niuwa/logic/j/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/j/a;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/j/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/j/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/j/a;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/j/a$1;->a:Lcom/jiliguala/niuwa/logic/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    const-string v0, "REVIEW_DIALOG"

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->notifyDialogDismiss(Ljava/lang/String;)V

    .line 145
    return-void
.end method
