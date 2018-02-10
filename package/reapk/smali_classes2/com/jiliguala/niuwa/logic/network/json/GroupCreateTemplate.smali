.class public Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public agech:Ljava/lang/String;

.field public ava:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public max:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "agech"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "ava"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;-><init>()V

    .line 15
    .local v0, "instance":Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;
    iput-object p0, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;->title:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;->desc:Ljava/lang/String;

    .line 17
    iput-object p2, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;->agech:Ljava/lang/String;

    .line 18
    iput p3, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;->max:I

    .line 19
    iput-object p4, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupCreateTemplate;->ava:Ljava/lang/String;

    .line 20
    return-object v0
.end method
