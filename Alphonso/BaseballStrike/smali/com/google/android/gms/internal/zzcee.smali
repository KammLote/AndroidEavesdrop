.class final Lcom/google/android/gms/internal/zzcee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbot:J

.field private synthetic zzbou:Lcom/google/android/gms/internal/zzceb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzceb;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcee;->zzbou:Lcom/google/android/gms/internal/zzceb;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcee;->zzbot:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcee;->zzbou:Lcom/google/android/gms/internal/zzceb;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcee;->zzbot:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzceb;->zza(Lcom/google/android/gms/internal/zzceb;J)V

    return-void
.end method
