.class Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->onVideoCheckPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$7;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity$7;->a:Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;->removeCaptionView()V

    .line 587
    return-void
.end method
