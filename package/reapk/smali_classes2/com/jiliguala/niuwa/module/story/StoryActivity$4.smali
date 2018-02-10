.class Lcom/jiliguala/niuwa/module/story/StoryActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/fragments/StoryCompleteShareFragment$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/StoryActivity;->doDirectlyShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/StoryActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/StoryActivity;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$4;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/StoryActivity$4;->a:Lcom/jiliguala/niuwa/module/story/StoryActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/StoryActivity;->access$000(Lcom/jiliguala/niuwa/module/story/StoryActivity;)V

    .line 682
    return-void
.end method
