.class Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->enterAngryMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$3;->a:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$3;->a:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->access$000(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V

    .line 339
    return-void
.end method
