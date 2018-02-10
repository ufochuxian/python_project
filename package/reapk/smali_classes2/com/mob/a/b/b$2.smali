.class Lcom/mob/a/b/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/b/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/a/b/b;


# direct methods
.method constructor <init>(Lcom/mob/a/b/b;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mob/a/b/b$2;->a:Lcom/mob/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/mob/a/b/b$2;->a:Lcom/mob/a/b/b;

    invoke-static {v0}, Lcom/mob/a/b/b;->b(Lcom/mob/a/b/b;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/mob/a/b/b$2;->a:Lcom/mob/a/b/b;

    invoke-static {v0}, Lcom/mob/a/b/b;->c(Lcom/mob/a/b/b;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
