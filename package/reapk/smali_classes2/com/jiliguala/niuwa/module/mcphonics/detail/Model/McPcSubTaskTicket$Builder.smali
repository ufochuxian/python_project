.class public Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

.field private position:I

.field private redId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)Lcom/jiliguala/niuwa/logic/network/json/Lessons;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    .prologue
    .line 65
    iget v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->position:I

    return v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->redId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket;-><init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$1;)V

    return-object v0
.end method

.method public setLessons(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;
    .locals 0
    .param p1, "lessons"    # Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->lesson:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 82
    return-object p0
.end method

.method public setPosition(I)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->position:I

    .line 87
    return-object p0
.end method

.method public setRedId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;
    .locals 0
    .param p1, "redId"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->redId:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/Model/McPcSubTaskTicket$Builder;->type:Ljava/lang/String;

    .line 77
    return-object p0
.end method
