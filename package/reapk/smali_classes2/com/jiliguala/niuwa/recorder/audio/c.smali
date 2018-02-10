.class public Lcom/jiliguala/niuwa/recorder/audio/c;
.super Lcom/jiliguala/niuwa/recorder/audio/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "outfileName"    # Ljava/lang/String;

    .prologue
    .line 9
    sget-object v0, Lcom/jiliguala/niuwa/recorder/audio/c;->B:Ljava/lang/String;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jiliguala/niuwa/recorder/audio/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 10
    return-void
.end method
