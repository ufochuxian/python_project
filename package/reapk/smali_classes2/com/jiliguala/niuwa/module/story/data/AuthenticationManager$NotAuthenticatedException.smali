.class public Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$NotAuthenticatedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotAuthenticatedException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$NotAuthenticatedException;->this$0:Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
