.class Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment$2;->a:Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/hotsubject/HotSubjectFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->d()V

    .line 155
    return-void
.end method
