.class Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->onFavoriteTouched()V
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
    .line 562
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager$1;->a:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->access$100(Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;)V

    .line 566
    return-void
.end method
