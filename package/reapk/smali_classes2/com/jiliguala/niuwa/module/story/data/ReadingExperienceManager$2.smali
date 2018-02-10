.class Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onOfflineError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$2;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 615
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$2;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$200(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Z)V

    .line 616
    return-void
.end method
