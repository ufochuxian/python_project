.class public Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PutBabyInfoTemplate"
.end annotation


# instance fields
.field public ava:Ljava/lang/String;

.field public bd:J

.field public gender:Ljava/lang/String;

.field public nick:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "bd"    # J
    .param p4, "ava"    # Ljava/lang/String;
    .param p5, "gender"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;->nick:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;->bd:J

    .line 17
    iput-object p4, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;->ava:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PutBabyInfoTemplate;->gender:Ljava/lang/String;

    .line 19
    return-void
.end method
