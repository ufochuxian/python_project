.class Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3$1;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3$1;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$3;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$100(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    .line 609
    return-void
.end method
