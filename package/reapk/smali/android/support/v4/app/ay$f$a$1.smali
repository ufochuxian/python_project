.class final Landroid/support/v4/app/ay$f$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bd$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay$f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;Landroid/support/v4/app/bq$a;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/ay$f$a;
    .locals 8
    .param p1, "messages"    # [Ljava/lang/String;
    .param p2, "remoteInput"    # Landroid/support/v4/app/bq$a;
    .param p3, "replyPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "readPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "latestTimestamp"    # J

    .prologue
    .line 3978
    new-instance v0, Landroid/support/v4/app/ay$f$a;

    move-object v2, p2

    check-cast v2, Landroid/support/v4/app/bo;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/ay$f$a;-><init>([Ljava/lang/String;Landroid/support/v4/app/bo;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0
.end method

.method public synthetic b([Ljava/lang/String;Landroid/support/v4/app/bq$a;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/bd$b;
    .locals 2

    .prologue
    .line 3972
    invoke-virtual/range {p0 .. p7}, Landroid/support/v4/app/ay$f$a$1;->a([Ljava/lang/String;Landroid/support/v4/app/bq$a;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/ay$f$a;

    move-result-object v0

    return-object v0
.end method
