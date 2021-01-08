.class public final enum Lcom/google/android/gms/internal/wh;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/wh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzchF:Lcom/google/android/gms/internal/wh;

.field public static final enum zzchG:Lcom/google/android/gms/internal/wh;

.field public static final enum zzchH:Lcom/google/android/gms/internal/wh;

.field public static final enum zzchI:Lcom/google/android/gms/internal/wh;

.field public static final enum zzchJ:Lcom/google/android/gms/internal/wh;

.field private static final synthetic zzchK:[Lcom/google/android/gms/internal/wh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/wh;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/wh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wh;->zzchF:Lcom/google/android/gms/internal/wh;

    new-instance v0, Lcom/google/android/gms/internal/wh;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/wh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wh;->zzchG:Lcom/google/android/gms/internal/wh;

    new-instance v0, Lcom/google/android/gms/internal/wh;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/wh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wh;->zzchH:Lcom/google/android/gms/internal/wh;

    new-instance v0, Lcom/google/android/gms/internal/wh;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/wh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wh;->zzchI:Lcom/google/android/gms/internal/wh;

    new-instance v0, Lcom/google/android/gms/internal/wh;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/wh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wh;->zzchJ:Lcom/google/android/gms/internal/wh;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/wh;

    sget-object v1, Lcom/google/android/gms/internal/wh;->zzchF:Lcom/google/android/gms/internal/wh;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/wh;->zzchG:Lcom/google/android/gms/internal/wh;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/wh;->zzchH:Lcom/google/android/gms/internal/wh;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/wh;->zzchI:Lcom/google/android/gms/internal/wh;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/wh;->zzchJ:Lcom/google/android/gms/internal/wh;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/wh;->zzchK:[Lcom/google/android/gms/internal/wh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/wh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wh;->zzchK:[Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/wh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/wh;

    return-object v0
.end method
