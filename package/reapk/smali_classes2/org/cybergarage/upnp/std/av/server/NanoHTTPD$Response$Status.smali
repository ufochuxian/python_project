.class public final enum Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPTED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum CREATED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field private static final synthetic ENUM$VALUES:[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum FORBIDDEN:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum NOT_FOUND:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum NOT_MODIFIED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum NO_CONTENT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum OK:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum PARTIAL_CONTENT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum RANGE_NOT_SATISFIABLE:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

.field public static final enum UNAUTHORIZED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;


# instance fields
.field private final description:Ljava/lang/String;

.field private final requestStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 688
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->OK:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->CREATED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "ACCEPTED"

    const/16 v2, 0xca

    const-string v3, "Accepted"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->ACCEPTED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "NO_CONTENT"

    const/16 v2, 0xcc

    const-string v3, "No Content"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NO_CONTENT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "PARTIAL_CONTENT"

    .line 689
    const/16 v2, 0xce

    const-string v3, "Partial Content"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "REDIRECT"

    const/4 v2, 0x5

    const/16 v3, 0x12d

    const-string v4, "Moved Permanently"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->REDIRECT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "NOT_MODIFIED"

    const/4 v2, 0x6

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x7

    .line 690
    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0x8

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0x9

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0xa

    const/16 v3, 0x194

    .line 691
    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "RANGE_NOT_SATISFIABLE"

    const/16 v2, 0xb

    const/16 v3, 0x1a0

    const-string v4, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    new-instance v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0x1f4

    .line 692
    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    .line 686
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->OK:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->CREATED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v1, v0, v6

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->ACCEPTED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v1, v0, v7

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NO_CONTENT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v1, v0, v8

    sget-object v1, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->REDIRECT:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->BAD_REQUEST:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->FORBIDDEN:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->NOT_FOUND:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->ENUM$VALUES:[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "requestStatus"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 698
    iput p3, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->requestStatus:I

    .line 699
    iput-object p4, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    .line 700
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    return-object v0
.end method

.method public static values()[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->ENUM$VALUES:[Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    array-length v1, v0

    new-array v2, v1, [Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->requestStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStatus()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/NanoHTTPD$Response$Status;->requestStatus:I

    return v0
.end method
