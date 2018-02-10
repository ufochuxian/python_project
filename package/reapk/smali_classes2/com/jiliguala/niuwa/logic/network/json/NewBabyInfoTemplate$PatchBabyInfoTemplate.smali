.class public Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;
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
    name = "PatchBabyInfoTemplate"
.end annotation


# instance fields
.field public _id:Ljava/lang/String;

.field public ava:Ljava/lang/String;

.field public bd:J

.field public gender:Ljava/lang/String;

.field public nick:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "bd"    # J
    .param p5, "ava"    # Ljava/lang/String;
    .param p6, "gender"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;->nick:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;->bd:J

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;->_id:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;->ava:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/jiliguala/niuwa/logic/network/json/NewBabyInfoTemplate$PatchBabyInfoTemplate;->gender:Ljava/lang/String;

    .line 35
    return-void
.end method
