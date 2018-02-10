.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 2107
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$3;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$3;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onBiginOfSpeech()V

    .line 2110
    return-void
.end method
