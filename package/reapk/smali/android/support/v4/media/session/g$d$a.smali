.class final Landroid/support/v4/media/session/g$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public final c:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "stub"    # Landroid/os/ResultReceiver;

    .prologue
    .line 2329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2330
    iput-object p1, p0, Landroid/support/v4/media/session/g$d$a;->a:Ljava/lang/String;

    .line 2331
    iput-object p2, p0, Landroid/support/v4/media/session/g$d$a;->b:Landroid/os/Bundle;

    .line 2332
    iput-object p3, p0, Landroid/support/v4/media/session/g$d$a;->c:Landroid/os/ResultReceiver;

    .line 2333
    return-void
.end method
