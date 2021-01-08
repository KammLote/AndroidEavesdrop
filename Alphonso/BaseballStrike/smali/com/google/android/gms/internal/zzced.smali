.class final Lcom/google/android/gms/internal/zzced;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbot:J

.field private synthetic zzbou:Lcom/google/android/gms/internal/zzceb;

.field private synthetic zztF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzceb;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzced;->zzbou:Lcom/google/android/gms/internal/zzceb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzced;->zztF:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzced;->zzbot:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzced;->zzbou:Lcom/google/android/gms/internal/zzceb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzced;->zztF:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzced;->zzbot:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzceb;->zzb(Lcom/google/android/gms/internal/zzceb;Ljava/lang/String;J)V

    return-void
.end method
