.class public final Lcom/google/android/gms/internal/zzbro;
.super Ljava/lang/Object;


# static fields
.field public static final zzaQI:Lcom/google/android/gms/internal/zzbrp;

.field public static final zzaQJ:Lcom/google/android/gms/internal/zzbrq;

.field public static final zzaQK:Lcom/google/android/gms/internal/zzbrs;

.field public static final zzaQL:Lcom/google/android/gms/internal/zzbrr;

.field public static final zzaQM:Lcom/google/android/gms/internal/zzbru;

.field public static final zzaQN:Lcom/google/android/gms/internal/zzbrt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzbrp;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbrp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbro;->zzaQI:Lcom/google/android/gms/internal/zzbrp;

    new-instance v0, Lcom/google/android/gms/internal/zzbrq;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbro;->zzaQJ:Lcom/google/android/gms/internal/zzbrq;

    new-instance v0, Lcom/google/android/gms/internal/zzbrs;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbrs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbro;->zzaQK:Lcom/google/android/gms/internal/zzbrs;

    new-instance v0, Lcom/google/android/gms/internal/zzbrr;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbro;->zzaQL:Lcom/google/android/gms/internal/zzbrr;

    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbru;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbro;->zzaQM:Lcom/google/android/gms/internal/zzbru;

    new-instance v0, Lcom/google/android/gms/internal/zzbrt;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbro;->zzaQN:Lcom/google/android/gms/internal/zzbrt;

    return-void
.end method
