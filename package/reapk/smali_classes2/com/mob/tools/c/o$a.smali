.class final Lcom/mob/tools/c/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Message;

.field public final b:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/mob/tools/c/o$a;->a:Landroid/os/Message;

    .line 143
    iput-object p2, p0, Lcom/mob/tools/c/o$a;->b:Landroid/os/Handler$Callback;

    .line 144
    return-void
.end method
